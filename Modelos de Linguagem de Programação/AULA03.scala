//val frutas = List("Maçã", "Banana", "Laranja")
//
//val novasFrutas = frutas :+ "Goiaba"
//
//def AdicionaNumero(lista: List[Int]): List[Int] = {
//  for (numero <- lista) yield numero + 1
//}
//
//val numeros = List(1, 2, 3, 4)
//val addNumeros = AdicionaNumero(numeros)

val num: Int = 3

def Quadrado(x: Int) : Int = x * x

val funcQuadrado: Int => Int = Quadrado

//println(funcQuadrado(3))

def AtribuiQuadrado(f: Int => Int) : Int = f(num)

println(AtribuiQuadrado(Quadrado))
