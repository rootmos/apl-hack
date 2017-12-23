#include <stdbool.h>
#include <stdio.h>

int f()
{
    int h = 0;
    for (int b = 107900; b <= 124900; b+=17) {
        bool f = false;

        int d = 2;
        do {
            int e = 2;
            do {
                if(d*e == b) {
                    f = true; /* b has a non-trivial factorization */
                }
                e+=1;
            } while(e != b);
            d += 1;
        } while(d != b);

        if(f) {
            h += 1;
        }
    }

    return h;
}

void main()
{
    printf("h=%d\n", f());
}
