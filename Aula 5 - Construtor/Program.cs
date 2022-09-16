using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_5___Construtor
{
    class Program
    {
        static void Main(string[] args)
        {
            Aluno a1 = new Aluno("Zé", 121, "Ze@gmail.com");
            Aluno a2 = new Aluno("Ana", 234, "Ana@xy.com");
            Aluno a3 = new Aluno("Pualo", 738, "Paulo@ig.com");

            Console.WriteLine(a1.Nome+" "+a1.Matricula+" "+a1.Email);
            Console.WriteLine(a2.Nome + " " + a2.Matricula + " " + a2.Email);
            Console.WriteLine(a3.Nome + " " + a3.Matricula + " " + a3.Email);
            Console.ReadKey();
        }
    }
}
