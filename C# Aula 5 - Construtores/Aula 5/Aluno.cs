using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_5
{
    class Aluno
    {
        private string nome;
        public string Nome { get => nome; set => value = nome; }

        private int matricula;
        public int Matricula { get => matricula; set => value = matricula; }

        private string email;
        public string Email { get => email; set => value = email; }

        public Aluno(string nome) => this.nome = nome;

        public Aluno(string nome, string email)
        {
            this.nome = nome;
            this.email = email;
        }

        public Aluno(string nome, int matricula, string email)
        {
            this.nome = nome;
            this.matricula = matricula;
            this.email = email;
        }

    }
}
