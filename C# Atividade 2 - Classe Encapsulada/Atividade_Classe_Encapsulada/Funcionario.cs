using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atividade_Classe_Encapsulada
{
    internal class Funcionario
    {
        string nome;
        public string Nome { get => nome; set => nome = value; }
        
        int matricula;
        public int Matricula { get => matricula; set => matricula = value; }
        
        int salario;
        public int Salario { get => salario; set => salario = value; }

        public Funcionario(string nome, int matricula, int salario)
        {
            Nome = nome;
            Matricula = matricula;
            Salario = salario;
        }
    }
}
