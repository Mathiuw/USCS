package aula0602;
public class aluno {
String nome;
int codmat;
String cpf;
char sexo;
double nota_P1;
double nota_P2;
double nota_P3;
double media = 0;
double maior1;
double maior2;
public aluno(String nome, int codmat, String cpf, char sexo, double nota_P1, double nota_P2, double nota_P3) {
this.nome = nome;
this.codmat = codmat;
this.cpf = cpf;
this.sexo = sexo;
this.nota_P1 = nota_P1;
this.nota_P2 = nota_P2;
this.nota_P3 = nota_P3;
}
public void imprime_Aluno() {
System.out.println(this.nome);
System.out.println(this.codmat);
System.out.println(this.cpf);
System.out.println(this.sexo); 
}
public void imprime_Sexo() {
System.out.println(this.nome);
if(sexo == 'M') {
System.out.println("Masculino");
}else if (sexo == 'F'){
System.out.println("Feminino");
}
}
public double media_Aluno() {
maior1 = nota_P1;
maior2 = nota_P2;
if(nota_P3 > nota_P1) maior1 = nota_P3;
else if (nota_P3 > nota_P2) maior2 = nota_P3; 
if(nota_P1 > maior2) maior2 = nota_P1;
media = ((maior1 + maior2) / 2);
return media;
}
public void resultado() {
if(media >= 6) {
System.out.println("Aprovado");
}else {
System.out.println("Reprovado");
}
}
}
