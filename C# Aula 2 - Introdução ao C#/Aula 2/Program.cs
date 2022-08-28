using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula_2
{
    class Program
    {
        static void Main(string[] args)
        {
            MultiploDe7();
        }

        public static double AreaQuadrado()
        {
            double lado, area;
            Console.WriteLine("Escreva a area do quadrado: ");
            lado = double.Parse(Console.ReadLine());
            area = lado * lado;
            return area;
        }

        public static void NumeroMaior()
        {
            double num1, num2;
            Console.WriteLine("Escreva dois numeros: ");
            num1 = double.Parse(Console.ReadLine());
            num2 = double.Parse(Console.ReadLine());

            if (num1 > num2) Console.WriteLine(num1);
            else Console.WriteLine(num2 + " é maior que " + num2);
        }

        public static void NumeroMaiorOuIgual()
        {
            double num1, num2;
            Console.WriteLine("Escreva dois numeros: ");
            num1 = double.Parse(Console.ReadLine());
            num2 = double.Parse(Console.ReadLine());

            if (num1 > num2) Console.WriteLine(num1 + " é maior que " + num2);
            else if (num1 == num2) Console.WriteLine("Os numeros são iguais");
            else Console.WriteLine(num2 + " é maior que " + num1);
        }

        public static void NumeroMaiorEntre3Numeros()
        {
            double num1, num2, num3;
            Console.WriteLine("Escreva Tres numeros: ");
            num1 = double.Parse(Console.ReadLine());
            num2 = double.Parse(Console.ReadLine());
            num3 = double.Parse(Console.ReadLine());

            if (num1 > num2 && num1 > num3) Console.WriteLine(num1 + " é maior que " + num2 + " e " + num3);
            else if (num2 > num1 && num2 > num3) Console.WriteLine(num2 + " é maior que " + num1 + " e " + num3);
            else Console.WriteLine(num3 + " é maior que " + num1 + " e " + num2);
        }

        public static void MultiploDe7()
        {
            double num, resto;
            Console.WriteLine("Escreva Um numero: ");
            num = double.Parse(Console.ReadLine());

            if (num % 7 == 0) Console.WriteLine(num + " é multiplo de 7");
            else Console.WriteLine(num + " não é multiplo de 7");
        }
    }
}