#include <stdio.h>

int main ()
{
  float sal, salPHora, horasTrab;

  printf ("Insira o salario por hora: ");
  scanf ("\n%f", &salPHora);
  printf ("\n\nInsira as horas trabalhadas: ");
  scanf ("\n%f", &horasTrab);

  sal = salPHora * horasTrab;

  printf ("\n\n Salario : %f", sal);

  return 0;
}
