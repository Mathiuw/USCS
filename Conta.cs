using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Conta
    {                                     
        public int numero;                
        public Cliente titular;           
        public double saldo;

        public double Mostrasaldo()
        {
            return this.saldo;
        }

        public int MostraNumero()
        {
            return this.numero;
        }

        public string MostraTitular()
        {
            return titular.nome + " " + titular.cpf;
        }

        public bool Sacar(double valor)
        {
            if (this.saldo >= valor)
            {
                this.saldo -= valor;
                return true;
            }
            else return false;
        }

        public void Depositar(double valor)
        {
            saldo += valor;              
        }

        public bool transferir(double valor, Conta conta)
        {
            if (this.saldo >= valor)
            {
                this.saldo -= valor;
                conta.saldo += valor;
                return true;
            }
            else return false;
        }
    }
}
