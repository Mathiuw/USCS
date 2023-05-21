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
	
	//Exercicio 1 da tarefa T2
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
	
	
}