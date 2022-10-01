using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula6
{
    class Pessoa
    {
        string nome;
        string endereço;
        string rg;
        string cpf;

        public string Nome { get => nome; private set => nome = value; }
        public string Endereço { get => endereço; private set => endereço = value; }
        public string Rg { get => rg; private set => rg = value; }
        public string Cpf { get => cpf; private set => cpf = value; }

        public void ImprimePessoa() => Console.WriteLine(Nome + " " + Endereço + " " + Rg + " " + Cpf);

        public Pessoa(string nome, string endereço, string rg, string cpf)
        {
            Nome = nome;
            Endereço = endereço;
            Rg = rg;
            Cpf = cpf;
        }

        public Pessoa(){}
    }
}
