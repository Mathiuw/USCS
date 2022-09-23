using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula6
{
    class Aluno
    {
        private string nome;
        public string Nome { get => nome; set => nome = value; }

        private int matricula;
        public int Matricula { get => matricula; set => matricula = value; }

        private string email;
        public string Email { get => email; set => email = value; }

        public Aluno() { }      

        public Aluno(string nome) => Nome = nome;          
       
        public Aluno(string nome, int matricula, string email)
        {
            Nome = nome;
            Matricula = matricula;
            Email = email;
        }

        public void imprimir() => Console.WriteLine(this.Nome + " " + this.Matricula + " " + this.Email);

    }
}
