using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atividade_Classe_Encapsulada
{
    internal class Program
    {
        public static float media = 0;

        static void Main(string[] args)
        {
            Funcionario[] funcionarios = new Funcionario[4];

            funcionarios[0] = new Funcionario("Carlos", 256, 1200);
            funcionarios[1] = new Funcionario("Roberto", 486, 1800);
            funcionarios[2] = new Funcionario("Claudinei", 158, 2000);
            funcionarios[3] = new Funcionario("Pedro", 129, 1000);

            MediaSalarial(funcionarios);
            Console.WriteLine("\nSalarios Acima da Media : ");
            ExibirSalarioAcimaDaMedia(funcionarios, media);
            Console.ReadKey();
        }

        static void MediaSalarial(Funcionario[] funcionarios) 
        {
            foreach (Funcionario f in funcionarios) media += f.Salario;
            media /= funcionarios.Length;
            Console.WriteLine("Media Salarial = " + media );      
        }

        static void ExibirSalarioAcimaDaMedia(Funcionario[] funcionarios, float media) 
        {
            foreach (Funcionario f in funcionarios) if (f.Salario > media) Console.WriteLine(f.Nome + " " + f.Matricula);        
        }
    }
}
