#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

struct pxx {
    uint8_t a;
    uint32_t b;
    uint8_t c;
    uint8_t d;
    uint8_t e;
    uint16_t f;
} __attribute__((packed));

struct sxx {
    uint8_t a;
    uint32_t b;
    uint8_t c;
    uint8_t d;
    uint8_t e;
    uint16_t f;
};

int main(int argc, char *argv[])
{
    struct pxx p;
    memset(&p, 0, sizeof(p));

    p.a = 0x11;
    p.b = 0x22334455;
    p.c = 0x66;
    p.d = 0x77;
    p.e = 0x88;
    p.f = 0x99AA;

    printf("sizeof(p):%zu\n", sizeof(p));
    printf("&p:%p\n", &p);
    printf("p.a: %p, %8x, %zu\n", &p.a, p.a, sizeof(p.a));
    printf("p.b: %p, %8x, %zu\n", &p.b, p.b, sizeof(p.b));
    printf("p.c: %p, %8x, %zu\n", &p.c, p.c, sizeof(p.c));
    printf("p.d: %p, %8x, %zu\n", &p.d, p.d, sizeof(p.d));
    printf("p.e: %p, %8x, %zu\n", &p.e, p.e, sizeof(p.e));
    printf("p.f: %p, %8x, %zu\n", &p.f, p.f, sizeof(p.f));

    uint32_t x = p.b;
    printf("\n");
    printf("x  : %x\n", x);
    printf("p.b: %x\n", p.b);
    printf("\n");

    struct sxx s;
    memset(&s, 0, sizeof(s));

    s.a = 0x11;
    s.b = 0x22334455;
    s.c = 0x66;
    s.d = 0x77;
    s.e = 0x88;
    s.f = 0x99AA;

    printf("sizeof(s):%zu\n", sizeof(s));
    printf("&s:%p\n", &s);
    printf("s.a: %p, %8x, %zu\n", &s.a, s.a, sizeof(s.a));
    printf("s.b: %p, %8x, %zu\n", &s.b, s.b, sizeof(s.b));
    printf("s.c: %p, %8x, %zu\n", &s.c, s.c, sizeof(s.c));
    printf("s.d: %p, %8x, %zu\n", &s.d, s.d, sizeof(s.d));
    printf("s.e: %p, %8x, %zu\n", &s.e, s.e, sizeof(s.e));
    printf("s.f: %p, %8x, %zu\n", &s.f, s.f, sizeof(s.f));

    return 0;
}
