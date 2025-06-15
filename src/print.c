#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdarg.h>

/**
 * @brief This function print_buf is designed to print the contents of a buffer
 * in a formatted hexadecimal and ASCII representation. The output includes the
 * buffer address, hexadecimal values, and corresponding ASCII characters, with
 * unprintable characters shown as dots (.). The function ensures the output
 * format is consistent, even when the buffer length is not a multiple of 16
 * bytes.
 *
 * @param buf Pointer to the buffer to be printed.
 * @param len Length of the buffer in bytes.
 * @param title Optional title to print before the buffer contents. This can be
 *              a formatted string followed by variadic arguments.
 */
void print_buf(const void *buf, size_t len, const char *title, ...)
{
	uint32_t i, j;
	int new_line = 1;

	// If a title is provided, use variadic arguments to print the title.
	if (title && *title) {
		va_list argp;
		va_start(argp, title);
		vfprintf(stderr, title, argp);
		va_end(argp);
		fputc('\n', stderr);
	}

	// If the buffer length is zero, print a message and return.
	if (len == 0) {
		printf("len is zero.\n\n");
		return;
	}

	// Traverse each byte of the buffer.
	for (i = 0; i < len; i++) {
		// Print new line and address every 16 bytes.
		if (new_line) {
			printf("0x%p: ", (uint8_t *)buf + i);
			new_line = 0;
		}

		// Print a space every 8 bytes for better readability.
		if (i % 8 == 0 && i % 16 != 0) {
			printf(" ");
		}

		// Print the current byte in hexadecimal format.
		printf("%02X ", ((uint8_t *)buf)[i]);

		// Print ASCII characters at the end of every 16 bytes.
		if ((i + 1) % 16 == 0) {
			printf("   ");
			for (j = i - 15; j <= i; j++) {
				if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
					printf(".");
				} else {
					printf("%c", ((char *)buf)[j]);
				}
			}
			printf("\n");
			new_line = 1;
		}
	}

	// Handle the last line if it's not complete.
	if (!new_line) {
		// Pad the last line with spaces if it's not 16 bytes.
		for (j = i; j % 16 != 0; j++) {
			if (j % 8 == 0) {
				printf(" ");
			}
			printf("   ");
		}

		// Print ASCII characters for the last line.
		printf("   ");
		for (j = i - (i % 16); j < i; j++) {
			if (((uint8_t *)buf)[j] < 0x20 || ((uint8_t *)buf)[j] > 0x7E) {
				printf(".");
			} else {
				printf("%c", ((char *)buf)[j]);
			}
		}

		/**
		 * If the current byte count is not a multiple of 16, pad the ASCII
		 * characters
		 */
		if (i % 16) {
			/**
			 * From the current position to the next 16-byte boundary, pad the
			 * characters.
			 */
			for (j = i; j < i + 16 - (i % 16); j++) {
				// Use '.' to pad the characters to align the ASCII characters.
				printf(".");
			}
		}
		printf("\n");
	}

	// printf("\n");
}
