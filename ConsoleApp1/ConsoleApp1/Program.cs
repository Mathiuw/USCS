﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aula6
{
    class Program
    {
        static void Main(string[] args)
        {
            Aluno a1 = new Aluno();
            a1.Nome = "Zé";
            a1.Matricula = 234;
            a1.Email = "ze@gmail.com";

            Aluno a2 = new Aluno("Ana");
            a2.Matricula = 789;
            a2.Email = "ana@xy.com";

            Aluno a3 = new Aluno("Paulo", 989, "paulo@ig.com");

            a1.imprimir();
            a2.imprimir();
            a3.imprimir();

            Console.ReadKey();
        }
    }
}
