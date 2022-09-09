using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_5_Get_Set
{
    class Program
    {
        static void Main(string[] args)
        {
            Pessoa p1 = new Pessoa("Ana", 23, 'F');
            Pessoa p2 = new Pessoa("Paulo", 35, 'M');
            Pessoa p3 = new Pessoa("Lia", 12, 'F');

            Console.WriteLine(p1.GetNome() + " " + p1.GetIdade() + " " + p1.GetSexo());
            Console.WriteLine(p2.GetNome() + " " + p2.GetIdade() + " " + p2.GetSexo());
            Console.WriteLine(p3.GetNome() + " " + p3.GetIdade() + " " + p3.GetSexo());
            Console.ReadKey();
        }
    }
}