//
// Created by janko on 6/21/26.
//
#include "../h/kernel_console.h"
#include "../h/systypes_c.hpp"
#include "../lib/hw.h"
#include "../h/kernel_synchronized.h"
#include "../h/kernel_atomics.h"

static rw_buffer_t rx_buf = (rw_buffer_t)NULL;
static rw_buffer_t tx_buf = (rw_buffer_t)NULL;
static sem_t rx_irq = (sem_t)NULL;
static sem_t tx_irq = (sem_t)NULL;

#define UART_STATUS  (*(volatile uint8*)CONSOLE_STATUS)
#define UART_RX_DATA (*(volatile uint8*)CONSOLE_RX_DATA)
#define UART_TX_DATA (*(volatile uint8*)CONSOLE_TX_DATA)


static void console_tx_thread(void*)
{
    while (1)
    {
        uint8 c;
        kernel_rw_buffer_read(tx_buf, &c, 1); // block until putc deposits something
        kernel_sem_wait(tx_irq); // block until UART ready to send
        UART_TX_DATA = c;
    }
}

static void console_rx_thread(void*)
{
    while (1)
    {
        kernel_sem_wait(rx_irq);
        while (UART_STATUS & CONSOLE_RX_STATUS_BIT)
        {
            uint8 c = UART_RX_DATA;
            kernel_rw_buffer_write(rx_buf, &c, 1);
            volatile char a = c;
        }
    }
}


void kernel_console_irq_handler()
{
    if (UART_STATUS & CONSOLE_RX_STATUS_BIT)
        kernel_sem_signal(rx_irq);
    if (UART_STATUS & CONSOLE_TX_STATUS_BIT)
        kernel_sem_signal(tx_irq);
}

void kernel_console_init()
{
    kernel_rw_buffer_open(&rx_buf, 256);
    kernel_rw_buffer_open(&tx_buf, 256);
    kernel_sem_new(&rx_irq, 0);
    kernel_sem_new(&tx_irq, 0);

    thread_t tx_t, rx_t;
    kernel_thread_create_active(&tx_t, console_tx_thread, NULL, 1);
    kernel_thread_create_active(&rx_t, console_rx_thread, NULL, 1);
}

int kernel_get_write_buffer_count()
{
    return tx_buf->full->value;
}
int kernel_get_read_buffer_count()
{
    return rx_buf->full->value;
}

void kernel_putc(char c)
{
    kernel_rw_buffer_write(tx_buf, &c, 1);
}

char kernel_getc()
{
    char c;
    kernel_rw_buffer_read(rx_buf, &c, 1);
    return c;
}

void kernel_puts(const char* s)
{
    for (int i = 0; s[i] != '\0'; i++)
        kernel_putc(s[i]);
}

void kernel_gets(char* buf, const int max)
{
    void __putc(char a);
    int i = 0;
    while (i < max - 1)
    {
        const char c = kernel_getc();
        if (c == '\r' || c == '\n')
        {
            kernel_putc('\n');
            break;
        }
        if (c == 0x7F || c == '\b')
        {
            if (i > 0)
            {
                i--;
                kernel_putc('\b');
                kernel_putc(' ');
                kernel_putc('\b');
            }
            continue;
        }
        buf[i++] = c;
        kernel_putc(c);
    }
    buf[i] = '\0';
}
