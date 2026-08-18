#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/sys/util.h>

LOG_MODULE_REGISTER(demo, LOG_LEVEL_DBG);

#define STACK_SIZE 1024

#define PRIO_LOW 7
#define PRIO_MED 7
#define PRIO_HIGH 7

void t_low_fn(void *p1, void *p2, void *p3)
{
    int step = 0;
    while (true) {
        LOG_INF("LOW: step %d, time %d", step++, k_uptime_get_32());
        k_msleep(300);
        
    }
}

void t_med_fn(void *p1, void *p2, void *p3)
{
    int step = 0;
    while (true) {
        LOG_INF("MED: step %d, time %d", step++, k_uptime_get_32());
        k_msleep(200);
    }
}

void t_high_fn(void *p1, void *p2, void *p3)
{
    int step = 0;
    while (true) {
        LOG_INF("HIGH: step %d, time %d", step++, k_uptime_get_32());
        k_msleep(100);
    }
}

K_THREAD_DEFINE(thread_low, STACK_SIZE, t_low_fn,
                NULL, NULL, NULL, PRIO_LOW, 0, 0);

K_THREAD_DEFINE(thread_med, STACK_SIZE, t_med_fn,
                NULL, NULL, NULL, PRIO_MED, 0, 0);

K_THREAD_DEFINE(thread_high, STACK_SIZE, t_high_fn,
                NULL, NULL, NULL, PRIO_HIGH, 0, 0);

                
int main(void)
{
    return 0;
}

