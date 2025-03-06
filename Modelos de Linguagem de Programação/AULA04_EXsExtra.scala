def verificarParOuImpar(numero : Int): String =
{
    if (numero % 2 == 0)
    {
      return "O numero é Par" 
    }
    else
    {
      return "O numero é impar"
    }
}

def classificarIdade(idade: Int): String =
{
  idade match
  {
    case x if x >=0 && x <= 12 => return "Criança"
    case x if x >=13 && x <= 17 => return "Adolescente"
    case x if x >=18 && x <= 64 => return "Adulto"
    case x if x > 64 => return "Idoso"
  }
}

def descricaoDia(dia: Int): String = 
{
  dia match
  {
    case 1 => return "Segunda"
    case 2 => return "Terça"
    case 3 => return "Quarta"
    case 4 => return "Quinta"
    case 5 => return "Sexta"
    case 6 => return "Sabado"
    case 7 => return "Domingo"
    case _ => return "Dia invalido"
  }
}

def calculadora(operacao: String, num1: Int, num2: Int): String = 
{
  operacao match
  {
    case "+" => return (num1 + num2).toString()
    case "-" => return (num1 - num2).toString()
    case "*" => return (num1 * num2).toString()
    case "/" => return (num1 / num2).toString()
    case _ => return "Operação Invalida"
  }
}


def verificarNumero(numero: Int): String =
{
  if (numero > 0)
  {
    return "Positivo"
  }
  else if (numero == 0)
  {
    return "Zero"
  }
  else
  {
    return "Negativo"
  }
}

def classificarTemperatura(temperatura: Int): String =
{
  temperatura match
  {
    case t if t < 10 => return "Frio"
    case t if t >= 10 && t <= 25 => return "Ameno"
    case t if t > 25 => return "Quente"
  }
}

def quadrante(angulo: Int): String = 
{
  angulo match
  {
    case a if a >= 0 && a <= 90 => return "Quadrante 1"
    case a if a > 90 && a <= 180 => return "Quadrante 2"
    case a if a > 180 && a <= 270 => return "Quadrante 3"
    case a if a > 270 && a <= 360 => return "Quadrante 4"
    case _ => return "Angulo invalido"
  }
}

def ehPrimo(numero: Int): String =
{
  if (numero <= 1) return "Não Primo"

  for (n <- 2 to numero-1)
  {
    if (numero % n == 0)
    {
      return "Não primo"
    }
  }

  return "Primo"
}
