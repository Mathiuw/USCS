using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Cliente cliente1 = new Cliente();
            cliente1.nome = "Joaquim Jose";
            cliente1.cpf = "988888";
            cliente1.rg = "12345";
            cliente1.endereco = "Rua ZZZZ, 23";

            Cliente cliente2 = new Cliente();
            cliente2.nome = "Cleber";
            cliente2.cpf = "977777";
            cliente2.rg = "555444";
            cliente2.endereco = "Rua YYYY, 28";

            Conta c1 = new Conta();
            c1.numero = 1;
            c1.titular = cliente1;
            c1.saldo = 1500;

            Conta c2 = new Conta();
            c2.numero = 2;
            c2.titular = cliente2;
            c2.saldo = 250;

            c1.Sacar(350);
            c2.transferir(100, c1);

            Console.WriteLine(c1.MostraNumero());
            Console.WriteLine(c1.MostraTitular());
            Console.WriteLine(c1.Mostrasaldo());       

            Console.WriteLine(c2.MostraNumero());
            Console.WriteLine(c2.MostraTitular());
            Console.WriteLine(c2.Mostrasaldo());           

            Console.ReadKey();
        }
    }
}
