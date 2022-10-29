#include <stdio.h>

int main()
{
    int a, b, c, posicao = 1;
    
    printf("Insira o numero 1: ");
    scanf("%d", &a);
    printf("\n\nInsira o numero 2: ");
    scanf("%d", &b);
    printf("\n\nInsira o numero 3: ");
    scanf("%d", &c);
    
    if(b>a && b>c) posicao = 2;
    else if(c>a && c>b) posicao = 3;
    
    printf("\n\nA posição do maior é %d", posicao);
    return 0;
}
