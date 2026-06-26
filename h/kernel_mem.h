//
// Created by janko on 6/11/26.
//

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include "../lib/hw.h"

void kernel_mem_init();
void* kernel_mem_alloc(size_t size);
int kernel_mem_free(void* ptr);
void* kernel_memset(void* ptr, uint64 value, size_t size);

#ifdef __cplusplus
}
#endif
