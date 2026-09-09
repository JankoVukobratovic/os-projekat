//main.cpp

#include "syscall_cpp.hpp"
#include "../h/kernel_mem.h"
#include "../h/kernel_threading.h"
#include "../h/kernel_trap.h"
#include "../h/kernel_console.h"
#include "../test/userMain.h"


void userTests(void* a)
{
    while (1)
    {
        userMain();
    }
}
sem_t sync;
void worker(void*)
{
    for (int i = 0; i < 10; i++)
    {
        putc('0' + i);
        time_sleep(10);
    }
    putc('\n');
    sem_signal(sync);
}

void worker_errored(void* a)
{
    time_sleep(20);
    asm volatile("csrr t6, sepc");
}

void testic(void*)
{
    sem_open(&sync, 0);
    puts("Starting worker threads\n");
    thread_t child1, child2, child3;
    thread_create(&child1, worker, NULL);
    thread_create(&child2, worker, NULL);
    thread_create(&child3, worker_errored, NULL);
    thread_join_all();
    puts("Joined wp\n");
}

int main()
{
    kernel_trap_init();
    kernel_mem_init();
    kernel_scheduler_init();
    kernel_console_init();

    thread_t test_runner;
    kernel_thread_create_active(&test_runner, userTests, NULL, 0);
    intr_restore(1);
    kernel_scheduler();
    return 0;
}
