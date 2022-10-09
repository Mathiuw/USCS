using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula7
{
    class Funcionario
    {
        string nome;
        int matricula;
        string cpf;

        public string Nome { get => nome; set => nome = value; }
        public int Matricula { get => matricula; set => matricula = value; }
        public string Cpf { get => cpf; set => cpf = value; }

        public void ImprimeFuncionario() => Console.WriteLine(nome + " " + matricula + " " + cpf );

        public Funcionario(string nome, int matricula, string cpf)
        {
            Nome = nome;
            Matricula = matricula;
            Cpf = cpf;
        }
    }
}
