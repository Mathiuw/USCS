#include <stdio.h>
#include <math.h>

#define QUANTIDADE_DE_PONTOS 3

typedef struct 
{
    int x;
    int y;
} Ponto;

int CalculaDistancia(int xa, int ya, int xb, int yb)
{
    int D = ((xb - xa)*(xb - xa) + (yb - ya)*(yb - ya));
    return sqrt(D);
}

int main()
{
    Ponto pontos[QUANTIDADE_DE_PONTOS];
    
    pontos[0].x = -4;
    pontos[0].y = 7;
    
    pontos[1].x = 2;
    pontos[1].y = -9;

    pontos[2].x = 5;
    pontos[2].y = 3;

    for (int i = 0 ; i < QUANTIDADE_DE_PONTOS ; i++) if(pontos[i].y > 0) printf("\n %d %d - Ponto Acima da Reta", pontos[i].x, pontos[i].y);
    
    int p = CalculaDistancia(pontos[0].x , pontos[0].y , pontos[1].x, pontos[1].y) + 
    CalculaDistancia(pontos[1].x, pontos[1].y , pontos[2].x , pontos[2].y) + 
    CalculaDistancia(pontos[2].x, pontos[2].y , pontos[0].x , pontos[0].y);
    
    printf("\n\nPerimetro = %d", p);
    
    return 0;
}



