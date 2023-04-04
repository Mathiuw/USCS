package uscs;

public class CList {
	
	int size;
	DNode head;
	
	public CList() 
	{
		DNode sentinela = new DNode();
		
		head = sentinela;
		head.next = sentinela;
		head.prev = sentinela;
	}
	
	public void InsereItem(int item) 
	{	
		DNode novoNode = new DNode(item);
		
		novoNode.next = head.next;
		novoNode.prev = head;
		head.next = novoNode;

		size++;
	}
	
	public void ImprimeLista() 
	{
		DNode noTrab = head.next;
		
		for(int i = 0 ; i< size ; i++) 
		{
			System.out.println(noTrab.item);
			
			noTrab = noTrab.next;	
		}
		
	}
	
	public int MenorValor() 
	{
		int menor = head.next.item;
		DNode noTrab = head.next;
		
		for(int i = 0 ; i< size ; i++) 
		{
			if (noTrab.item < menor) menor = noTrab.item; 
			
			noTrab = noTrab.next;	
		}
		
		return menor;
	}
	
	public int[] GeraArray() 
	{
		int[] listaArray = new int[size];
		DNode noTrab = head.next;
		
		for(int i = 0 ; i< size ; i++) 
		{
			listaArray[i] = noTrab.item; 
			
			noTrab = noTrab.next;	
		}
		
		return listaArray;
	}
}
