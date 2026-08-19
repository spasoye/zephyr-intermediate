#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/sys/util.h>

LOG_MODULE_REGISTER(lesson_2, LOG_LEVEL_DBG);

#define STACK_SIZE 1024

#define INCREMENTS 1000000
#define A_PRIO 5
#define B_PRIO 5

static volatile uint32_t cnt = 0;
static struct k_sem finish_sem;
static struct k_mutex cnt_mtx;

void thread_a_fn(void *p1, void *p2, void *p3){
    char *name = k_thread_name_get(k_current_get());

    for (int i = 0; i < INCREMENTS; i++){
        k_mutex_lock(&cnt_mtx,K_FOREVER);
        cnt++;
        k_mutex_unlock(&cnt_mtx);
    }

    LOG_INF("[%s] done", name);
    k_sem_give(&finish_sem);
}

void thread_b_fn(void *p1, void *p2, void *p3){

    char *name = k_thread_name_get(k_current_get());

    for (int i = 0; i < INCREMENTS; i++){
        k_mutex_lock(&cnt_mtx,K_FOREVER);
        cnt++;
        k_mutex_unlock(&cnt_mtx);
    }

    LOG_INF("[%s] done", name);
    k_sem_give(&finish_sem);
}


K_THREAD_DEFINE(thread_a, STACK_SIZE, thread_a_fn,
                NULL, NULL, NULL, A_PRIO, 0, 0);

K_THREAD_DEFINE(thread_b, STACK_SIZE, thread_b_fn,
                NULL, NULL, NULL, B_PRIO, 0, 0);

                
int main(void)
{
    uint32_t time = k_uptime_get_32();

    k_sem_init(&finish_sem, 0, 2);
    k_mutex_init(&cnt_mtx);

    LOG_INF("Expected final value: %d", INCREMENTS * 2);

    k_sem_take(&finish_sem, K_FOREVER);
    k_sem_take(&finish_sem, K_FOREVER);

    LOG_INF("Counter final value: %d", cnt);

    LOG_INF("Execution time: %d", k_uptime_get_32()-time);
    
    return 0;
}

