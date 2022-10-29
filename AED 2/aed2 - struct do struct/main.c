#include <stdio.h>

#define TAM 1

typedef struct
{
    char nome[50];
    char estilo[50];
    int integrantes;
    int rank;
} Banda;

void LeBanda(Banda *bandas)
{
    for(int i = 0 ; i < TAM ; i++)
    {
        printf("Noma da Banda: ");  scanf("%s", bandas[i].nome);    
        printf("\nEstilo da Banda: ");  scanf("%s", bandas[i].estilo);    
        printf("\nIntegrantes da Banda: "); scanf("%d", &bandas[i].integrantes);    
        printf("\nRank da Banda: ");    scanf("%d", &bandas[i].rank); printf("\n\n");    
    }
}

void ExibeBanda(Banda bandas)
{
    for(int i = 0 ; i < TAM ; i++)
    {
        printf("Noma da Banda: %s", bandas[i].nome);    
        printf("\nEstilo da Banda: %s", bandas[i].estilo);    
        printf("\nIntegrantes da Banda: %d", bandas[i].integrantes);    
        printf("\nRank da Banda: %d \n\n", bandas[i].rank);    
    }
}

void PesquisaBanda(Banda v)
{
    char[50] aux;
    printf ("\n\n Informe o tipo da musica :");
    scanf ("%s", &aux);
    
    for(int i = 0 ; i < TAM ; i++)
    {
        if(strcmp(v[i]).estilo, aux == 0)
    }
    
}

int main()
{
    Banda bandas[TAM];
    
    LeBanda(bandas);
    printf("Lista das Bandas : \n\n");
    ExibeBanda(bandas);
    
    return 0;
}

