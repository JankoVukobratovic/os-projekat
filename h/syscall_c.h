//
// Created by janko on 6/11/26.
//

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include "../lib/hw.h"
#include "systypes_c.hpp"

#define ECALL_MEM_ALLOC 0x01
#define ECALL_MEM_FREE 0x02
#define ECALL_MEM_SET 0x03

#define ECALL_THREAD_CREATE 0x11
#define ECALL_THREAD_EXIT 0x12
#define ECALL_THREAD_DISPATCH 0x13
#define ECALL_THREAD_JOIN 0x14
#define ECALL_THREAD_JOIN_ALL 0x15

#define ECALL_SEM_OPEN 0x21
#define ECALL_SEM_CLOSE 0x22
#define ECALL_SEM_WAIT 0x23
#define ECALL_SEM_SIGNAL 0x24
#define ECALL_SEM_WAIT_N 0x25
#define ECALL_SEM_SIGNAL_N 0x26

#define ECALL_RW_BUFFER_OPEN 0x27
#define ECALL_RW_BUFFER_READ 0x28
#define ECALL_RW_BUFFER_WRITE 0x29
#define ECALL_RW_BUFFER_CLOSE 0x2a

#define ECALL_SLEEP 0x31
#define ECALL_CONSOLE_GETC 0x41
#define ECALL_CONSOLE_PUTC 0x42
#define ECALL_CONSOLE_GETS 0x43
#define ECALL_CONSOLE_PUTS 0x44

uint64 syscall(uint64 code, uint64 arg0, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4);

// CONSOLE

void putc(char c);
char getc();
void puts(const char* s);
void gets(char* buf, int max);

// BUFFER

int rw_buffer_open(rw_buffer_t* handle, uint64 capacity);
int rw_buffer_close(rw_buffer_t handle);

int rw_buffer_write(rw_buffer_t handle, const void* src, uint64 size);
int rw_buffer_read(rw_buffer_t handle, void* dst, uint64 size);

// MEMORY

void* mem_alloc(size_t size);

int mem_free(void* ptr);

void memset(void* ptr, char value, size_t size);

// THREADING

int time_sleep(time_t);

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

int thread_join(thread_t thread);
int thread_join_all();

// SEMAPHORES

int sem_open(sem_t* handle, uint64 init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_wait_n(sem_t id, unsigned n);

int sem_signal_n(sem_t id, unsigned n);

typedef unsigned long time_t;

//  CONSOLE

#ifdef __cplusplus
}

#endif
