#include <stdio.h>

typedef struct 
{
    long codigo;
    float preco;
}Produto;

int main()
{
    Produto p;
    scanf("%ld %f", &p.codigo, &p.preco );
    printf("%ld %f", p.codigo, p.preco); 
    if(p.preco < 4) printf("\n\n Produto em promocao");
    else printf("\n\n Produto cadastrado");
    
    return 0;
}

2) pra q serve o typedef
3) como descobrir a função da linha 11