using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula7
{
    class Departamento
    {
        string nome;
        ArrayList listaDeFuncionarios = new ArrayList();

        public void AdicionaFuncionario(Funcionario f) => listaDeFuncionarios.Add(f);

        public void ImprimeDepartamento()
        {
            foreach (Funcionario f in listaDeFuncionarios) f.ImprimeFuncionario();
        } 

        public Departamento(string nome)=> this.nome = nome;
    }
}
