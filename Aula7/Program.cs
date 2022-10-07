using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula7
{
    class Program
    {
        static void Main(string[] args)
        {
            Departamento DepVendas = new Departamento("Vendas");
            Funcionario fun1 = new Funcionario("maria", 123, "67656567");
            Funcionario fun2 = new Funcionario("pedro", 789, "2213438");

            DepVendas.AdicionaFuncionario(fun1);
            DepVendas.AdicionaFuncionario(fun2);
            DepVendas.ImprimeDepartamento();
        }
    }
}
