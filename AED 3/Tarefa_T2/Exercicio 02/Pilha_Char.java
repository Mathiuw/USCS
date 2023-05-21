package USCS;

public class Pilha_Char {
	
	public int size;
	public Node_Char head;
	
	public void	push(char letra) 
	{
		Node_Char no_trab = new Node_Char();
		
		no_trab.letra = letra;
		size++;
		
		if(head == null) 
		{
			head = no_trab;
			System.out.println("Tamanho: " + size + ", Char: " + no_trab.letra);
			return;
		}
		
		no_trab.next = head;
		head = no_trab;
		System.out.println("Tamanho: " + size + ", Char: " + no_trab.letra);
	}
	
	//Exercicio 01 da tarefa T2
	public void Parametrizaçao(char inicio, char fim) 
	{	
		Node_Char no_trab = head;
		boolean haveInicio = false;
		boolean haveFim = false;
		
		for(int i=0 ; i < size; i++) 
		{	
			if(no_trab.letra == inicio) haveInicio = true;
			if(no_trab.letra == fim) haveFim = true;
			
			no_trab = no_trab.next;
		}
		
		if(!haveInicio && !haveFim) System.out.println(Character.toString(inicio) + Character.toString(fim) + " - A expressão não possui tais parametros");
		else if(haveInicio && !haveFim) System.out.println(Character.toString(inicio) + Character.toString(fim) + " - Parametrização falhou");
		else if(haveInicio && haveFim) System.out.println(Character.toString(inicio) + Character.toString(fim) + " - Parametrização confirmada");
	}
	
	//Exercicio 02 da tarefa T2
	public boolean IsPalindromo(String palavra) 
	{
		//Pilha para guardar a palavra invertida
		Pilha_Char no_trab = new Pilha_Char();
		
		//Inverte a palavra e insere em um array de chars
		String palavraInversa = new StringBuilder(palavra).reverse().toString();
		char[] palavraInverdaChar = palavraInversa.toCharArray();
		
		//Insere o array de chars na pilha
		for(int i=0 ; i < palavraInverdaChar.length; i++) no_trab.push(palavraInverdaChar[i]);
		
		//Checa se cada letra se corresponde
		for(int i=0 ; i < palavraInverdaChar.length; i++) 
		{
			Node_Char node_pilha = head;
			Node_Char node_pilha_invertida = no_trab.head;
			
			//retorna falso caso a palavra seja diferente inversa
			if(node_pilha.letra != node_pilha_invertida.letra) return false;
			
			node_pilha = node_pilha.next;
			node_pilha_invertida = node_pilha_invertida.next;
		}
		
		return true;
	}
}