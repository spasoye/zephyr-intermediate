#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/zbus/zbus.h>
#include <zephyr/debug/thread_analyzer.h>
#include <zephyr/task_wdt/task_wdt.h>
#include <zephyr/logging/log_ctrl.h>
#include <zephyr/sys/reboot.h>

LOG_MODULE_REGISTER(demo, LOG_LEVEL_DBG);

#define STACK_SIZE       2048
#define SENSOR_COUNT       32
#define SENSOR_PERIOD_MS  150
#define TEMP_ALARM_MC   27000

#define HEALTH_PERIOD_MS   100
#define QUEUE_WARN_PERCENT  75

/* ===================================================================*/
/*  consumer watchdog callback                                                 */
/* ===================================================================*/
static void consumer_wdt_cb(int channel_id, void *user_data)
{
    LOG_ERR("[WDT] channel=%d stuck, rebooting", channel_id);
    LOG_PANIC();

    sys_reboot(SYS_REBOOT_COLD);

}

/* ================================================================== */
/*  Shared channel message                                            */
/* ================================================================== */

struct sensor_data {
    int32_t temperature_mc;
    uint32_t timestamp_ms;
    uint8_t seq;
};

/* Forward declarations required before observer/channel definitions. */
static void display_listener_cb(const struct zbus_channel *chan);

/* ================================================================== */
/*  Observers                                                         */
/* ================================================================== */

ZBUS_LISTENER_DEFINE(display_lis, display_listener_cb);

/*
 * Logger is a message subscriber.
 * It receives message copies, not only channel notifications.
 */
ZBUS_SUBSCRIBER_DEFINE(consumer_sub, 8);

/* ================================================================== */
/*  Channel                                                           */
/* ================================================================== */

ZBUS_CHAN_DEFINE(sensor_chan, struct sensor_data,
                 NULL, NULL,
                 ZBUS_OBSERVERS(display_lis, consumer_sub),
                 ZBUS_MSG_INIT(.temperature_mc = 0,
                               .timestamp_ms = 0,
                               .seq = 0));

/* ================================================================== */
/*  Listener - synchronous observer                                   */
/* ================================================================== */

static void display_listener_cb(const struct zbus_channel *chan)
{
    const struct sensor_data *msg =
        (const struct sensor_data *)zbus_chan_const_msg(chan);

    /*
     * Listener runs in publisher context.
     * Keep it short. No blocking work here.
     */
    LOG_INF("[DISPLAY-LIS] thread=%s seq=%u temp=%d mC",
            k_thread_name_get(k_current_get()),
            msg->seq,
            msg->temperature_mc);
}

/* ================================================================== */
/*  Publisher                                                         */
/* ================================================================== */

static void sensor_thread_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1); ARG_UNUSED(p2); ARG_UNUSED(p3);

    k_thread_name_set(k_current_get(), "sensor");

    for (int i = 0; i < SENSOR_COUNT; i++) {
        struct sensor_data data = {
            .temperature_mc = 24000 + (i * 350),
            .timestamp_ms = k_uptime_get_32(),
            .seq = (uint8_t)i,
        };

        LOG_INF("[SENSOR] publish seq=%u temp=%d mC",
                data.seq,
                data.temperature_mc);

        int ret = zbus_chan_pub(&sensor_chan, &data, K_MSEC(100));
        if (ret != 0) {
            /* Queue overflow */
            LOG_WRN("[SENSOR] publish failed ret=%d", ret);
        }

        k_msleep(SENSOR_PERIOD_MS);
    }

    LOG_INF("[SENSOR] done");
}

/* ================================================================== */
/*  Message subscriber - consumer                                       */
/* ================================================================== */

static void consumer_thread_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1); ARG_UNUSED(p2); ARG_UNUSED(p3);

    int wdt_id = task_wdt_add(1000, consumer_wdt_cb, NULL);
    k_thread_name_set(k_current_get(), "consumer");

    const struct zbus_channel *chan;
    int received = 0;

    while (received < SENSOR_COUNT) {
        struct sensor_data msg;

        /*
         * Message subscribers receive a copy of the published message.
         * The slow logger will not reread the latest channel value.
         */
        int ret = zbus_sub_wait(&consumer_sub, &chan, K_MSEC(1500));
        if (ret != 0) {
            LOG_WRN("[CONSUMER-MSG] timeout ret=%d", ret);
            break;
        }

        ret = zbus_chan_read(chan, &msg, K_MSEC(100));
        if (ret != 0) {
            LOG_WRN("[CONSUMER] read failed ret=%d", ret);
            continue;
        }

        received++;

        LOG_INF("[CONSUMER-MSG] thread=%s seq=%u temp=%d latency=%ums",
                k_thread_name_get(k_current_get()),
                msg.seq,
                msg.temperature_mc,
                k_uptime_get_32() - msg.timestamp_ms);

        /* Demonstrate stuck thread after receiving 10 messages */
        // if (received == 30) {
        //     k_sleep(K_FOREVER);
        // }

        task_wdt_feed(wdt_id);

        /*
         * Slow consumer.
         * Message copies let it process old samples safely.
         */
        k_msleep(250);
    }

    /* Delete the watchdog timer for this thread */
    task_wdt_delete(wdt_id);

    LOG_INF("[CONSUMER-MSG] done received=%d", received);
}

/* ================================================================== */
/*  Subscriber - health-check thread                                  */
/* ================================================================== */
static void health_thread_fn(void *p1, void *p2, void *p3)
{
    ARG_UNUSED(p1); ARG_UNUSED(p2); ARG_UNUSED(p3);

    k_thread_name_set(k_current_get(), "health-check");

    struct k_msgq *q = (struct k_msgq *)consumer_sub.queue;
    bool warned = false;

    while (true) {
        uint32_t used = k_msgq_num_used_get(q);
        uint32_t capacity = k_msgq_num_free_get(q) + used;
        uint8_t percent = (used * 100) / capacity;

        if (percent >= QUEUE_WARN_PERCENT && !warned) {
            LOG_WRN("[HEALTH] alarm queue %u/%u (%u%%)",
                    used, capacity, percent);
            warned = true;
        } else if (percent < QUEUE_WARN_PERCENT) {
            warned = false;
        }

        k_msleep(HEALTH_PERIOD_MS);
    }
}

/* ================================================================== */
/*  Threads                                                           */
/* ================================================================== */

K_THREAD_DEFINE(sensor_thread, STACK_SIZE, sensor_thread_fn,
                NULL, NULL, NULL, 5, 0, 0);

K_THREAD_DEFINE(consumer_thread, STACK_SIZE, consumer_thread_fn,
                NULL, NULL, NULL, 6, 0, 0);

K_THREAD_DEFINE(health_thread, STACK_SIZE, health_thread_fn,
                NULL, NULL, NULL, 6, 0, 0);

/* ================================================================== */
/*  Main                                                              */
/* ================================================================== */

int main(void)
{
    int ret = task_wdt_init(NULL);

	if (ret != 0) {
		printk("task wdt init failure: %d\n", ret);
		return 0;
	}
    
    k_sleep(K_MSEC(500));

    thread_analyzer_print(0);
    LOG_INF("=== L5 Reliability under pressure ===");


    return 0;
}
