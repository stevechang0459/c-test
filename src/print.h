#ifndef PRINT_H
#define PRINT_H

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>


void print_buf(const void *buf, size_t len, const char *title, ...);

#endif // PRINT_H
