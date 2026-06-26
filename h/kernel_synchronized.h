//
// Created by janko on 6/21/26.
//

#pragma once

#include "kernel_threading.h"
#include "../lib/hw.h"

#ifdef __cplusplus
extern "C" {
#endif

int kernel_rw_buffer_open(rw_buffer_t* handle, uint64 capacity);

int kernel_rw_buffer_close(rw_buffer_t handle);

int kernel_rw_buffer_write(rw_buffer_t handle, const void* src, uint64 size);

int kernel_rw_buffer_read(rw_buffer_t handle, void* dst, uint64 size);

#ifdef __cplusplus
}


#endif
