#include <cstdio>
#include <cstdint>

int main()
{
    unsigned long n;
    scanf("%lu\n", &n);

    while (n != 1) {
        printf("%lu ", n);
        n = (n % 2 == 0) ? (n / 2) : (n * 3 + 1);
    }
    printf("1\n");
}