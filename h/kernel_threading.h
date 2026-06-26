//
// Created by janko on 6/11/26.
//

#pragma once


#ifdef __cplusplus
extern "C" {
#endif
#include "../lib/hw.h"
#include "systypes_c.hpp"

int setjmp(void* buf);
void longjmp(void* buf, int val);


void kernel_scheduler_process();

int kernel_scheduler_init();

void kernel_scheduler_append(thread_t thread);

int kernel_scheduler_tick(uint64 time);

thread_t kernel_scheduler_get_current_thread();

void kernel_scheduler();

thread_t kernel_scheduler_get_scheduler_thread();

thread_t kernel_scheduler_pick_next(void);

void kernel_scheduler_update_sleeping_threads(uint64 ticks);


#define SSTATUS_SIE (1ULL << 1)

void kernel_switch_thread(Context* old, Context* next);

int kernel_thread_create(thread_t* handle, void (*method)(void*), void* args, int is_system_thread);

int kernel_thread_create_active(thread_t* handle, void (*method)(void*), void* args, int is_system_thread);

int kernel_thread_start(thread_t thread);

void kernel_thread_dispatch();

int kernel_thread_sleep(uint64 ticks);

void kernel_thread_exit();

    int kernel_thread_join(thread_t thread);

    int kernel_thread_join_all();

//todo move
inline uint64 r_sstatus(void)
{
    uint64 x;
    asm volatile("csrr %0, sstatus" : "=r"(x));
    return x;
}

inline void w_sstatus(uint64 x)
{
    asm volatile("csrw sstatus, %0" : : "r"(x));
}

inline int intr_save(void)
{
    uint64 sstatus = r_sstatus();
    if (sstatus & SSTATUS_SIE)
    {
        w_sstatus(sstatus & ~SSTATUS_SIE); // Clear the SIE bit
        return 1;
    }
    return 0; // Interrupts were already disabled
}

inline void intr_restore(int previous_state)
{
    if (previous_state)
    {
        w_sstatus(r_sstatus() | SSTATUS_SIE); // Set the SIE bit
    }
    else
    {
        w_sstatus(r_sstatus() & ~SSTATUS_SIE); // Keep it cleared
    }
}

#ifdef __cplusplus
}
#endif
