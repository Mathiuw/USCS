#include <stdio.h>

int main()
{
    return 0;
}

bool VerificaIntervalo(int x, int min, int max)
{
    if(x >= min && x <= max ) return true;
    return false;
}

int MaiorElemento(int a, int b, int c)
{
    if(a < b && a < c) return 1;
    else if(b < a && b < c) return 2;
    return 3;
}
