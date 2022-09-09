using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_5_Get_Set
{
    class Pessoa
    {
        private String nome;
        private int idade;
        private char sexo;

        public void SetNome(String nome)
        {
            this.nome = nome;
        }

        public void SetIdade(int idade)
        {
            this.idade = idade;
        }

        public void SetSexo(char sexo)
        {
            this.sexo = sexo;
        }

        public String GetNome()
        {
            return nome;
        }

        public int GetIdade()
        {
            return idade;
        }

        public Char GetSexo()
        {
            return sexo;
        }

        public Pessoa(string nome, int idade, char sexo)
        {
            this.nome = nome;
            this.idade = idade;
            this.sexo = sexo;
        }
    }
}
