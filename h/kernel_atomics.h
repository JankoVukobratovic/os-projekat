//
// Created by janko on 6/11/26.
//

#pragma once
#include "syscall_c.h"

#ifdef __cplusplus
extern "C" {


#endif
int kernel_sem_wait(sem_t sem);

int kernel_sem_new(sem_t* handle, uint64 val);

    int kernel_sem_close(sem_t handle);

int kernel_sem_signal(sem_t sem);

#ifdef __cplusplus
}
#endif
