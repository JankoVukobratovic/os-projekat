//
// Created by janko on 6/21/26.
//

#pragma once

#pragma once
#ifdef __cplusplus
extern "C" {

#endif

void kernel_console_init();
void kernel_console_irq_handler();

void kernel_putc(char c);
char kernel_getc();
void kernel_puts(const char* s);
void kernel_gets(char* buf, int max);

int kernel_get_write_buffer_count();
int kernel_get_read_buffer_count();

#ifdef __cplusplus
}
#endif
