//
// Created by janko on 6/11/26.
//


#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include "../lib/hw.h"

typedef struct _rw_buffer* rw_buffer_t;
typedef struct _thread* thread_t;
typedef struct _sem* sem_t;


struct _sem
{
    uint64 id; //todo change this from int to str or smth more generic because this is so bad
    int value;
    thread_t wait_queue;
};

struct _rw_buffer
{
    uint8*  buf;
    uint64  capacity;
    uint64  rd;
    uint64  wr;
    sem_t   empty;
    sem_t   full;
    sem_t   wr_mtx;
    sem_t   rd_mtx;
};


typedef struct
{
    uint64 ra; // Return address (where to resume execution in C)
    uint64 sp; // Kernel stack pointer of the thread

    // Callee-saved registers
    uint64 s0; // Frame pointer
    uint64 s1;
    uint64 s2;
    uint64 s3;
    uint64 s4;
    uint64 s5;
    uint64 s6;
    uint64 s7;
    uint64 s8;
    uint64 s9;
    uint64 s10;
    uint64 s11;

    uint64 sstatus;
}   Context;

typedef enum { THREAD_READY, THREAD_RUNNING, THREAD_BLOCKED, THREAD_FINISHED, THREAD_SLEEPING } ThreadState;

struct _thread
{
    // general
    uint64 id;
    ThreadState state;
    void* stack_memory; // Pointer to the raw allocated stack chunk
    void* kernel_stack_memory; // pointer to kernel memory for traps ig (cope)
    void* kernel_stack_top;

    // scheduler and blocking
    Context context; // Saved scheduler context
    struct _thread* next;
    uint64 time_slice_run;
    uint64 max_time_slice;
    uint64 sleep_timeout;
    int wakeup_retval;

    // daemon or na
    int is_system;

    // join
    // --- Join Mechanisms ---
    struct _thread* parent;
    int active_children;
    sem_t join_sem;              // Signaled when this thread dies for join(thread)
    sem_t join_all_sem;          // Signaled when active_children hits 0 for join_all
};


#ifdef __cplusplus
}
#endif
