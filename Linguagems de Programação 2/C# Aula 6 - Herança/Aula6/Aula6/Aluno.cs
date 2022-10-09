using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula6
{
    class Aluno : Pessoa
    {
        int matricula;
        float notaP1;
        float notaP2;
        int faltas;
        int limiteDeFaltas = 10;
        float mediaDeAprovação = 7.0f;
        float mediaDeReprovação = 3.0f;

        public int Matricula { get => matricula; private set => matricula = value; }
        public float NotaP1 { get => notaP1; private set => notaP1 = value; }
        public float NotaP2 { get => notaP2; private set => notaP2 = value; }
        public int Faltas { get => faltas; private set => faltas = value; }
        public int LimiteDeFaltas { get => limiteDeFaltas; private set => limiteDeFaltas = value; }
        public float MediaDeAprovação { get => mediaDeAprovação; private set => mediaDeAprovação = value; }
        public float MediaDeReprovação { get => mediaDeReprovação; private set => mediaDeReprovação = value; }

        public float Media() { return (NotaP1 + NotaP2) / 2; }

        public void ImprimeFaltas() => Console.WriteLine(faltas);

        public string Resultado()
        {
            if (Media() >= MediaDeAprovação) return "Aprovado";
            if (Media() < MediaDeReprovação) return "Reprovado";
            else return "Reavaliação";
        } 

        public Aluno(int matricula, int notaP1, int notaP2, int faltas, string nome, string endereço, string rg, string cpf) : base (nome, endereço, rg, cpf)
        {
            Matricula = matricula;
            NotaP1 = notaP1;
            NotaP2 = notaP2;
            Faltas = faltas;
        }

        public Aluno(){}
    }
}
