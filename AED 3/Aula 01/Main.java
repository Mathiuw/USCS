package aula0602;
public class Main {
public static void main(String[] args) 
{
aluno x = new aluno("Paulo", 55123, "800912345", 'M', 7.0, 6.0, 9.0);
aluno y = new aluno("Ana", 991239, "500876123-12", 'F', 2.0, 6.0, 9.0);
x.imprime_Aluno();
x.imprime_Sexo();
x.media_Aluno();
x.resultado();
y.imprime_Aluno();
y.imprime_Sexo();
y.media_Aluno();
y.resultado();
}
}
