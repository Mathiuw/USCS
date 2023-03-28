package USCS;

public class Clist {

	int size;
	DlistNode head;
	
	public Clist() {}
	
	public void ImprimeFirst() 	{ System.out.println(head.next.item); }
	
	public void ImprimeLast() { System.out.println(head.prev.item); }
	
	public void InsereFirst(int item) 
	{ 
		DlistNode noTrab = new DlistNode(item);
		
		if(size != 0) 
		{
			head.next.prev = noTrab;
			noTrab.next = head.next;
			noTrab.prev = head;
			head.next = noTrab;
		}
	}
	
	public void InsereLast(int item) 
	{
		DlistNode noTrab = new DlistNode(item);
		
		if(size != 0) 
		{
			head.prev.next = noTrab;
			noTrab.next = head;
			noTrab.prev = head.prev;
			head.prev = noTrab;	
		}
	}
	
	public void	ImprimeLista() 
	{
		DlistNode noTrab = head.next;
		
		for(int i = 0 ; i < size ; i++) 
		{
			System.out.println(noTrab.prev.item);
			noTrab = noTrab.next;
		}
	}
	
	public void DeleteFirst() { if(size != 0)head.next = head.next.next; }
	
	public void DeleteLast() { if(size != 0)head.prev = head.prev.prev; }
	
	public int MediaLista() 
	{
		DlistNode noTrab = head.next;
		int soma = 0;
		
		for(int i = 0 ; i < size ; i++) 
		{
			soma += noTrab.item;
			noTrab = noTrab.next;
		}
		return soma / size;
	}
	
	public void DobraValores() 
	{
		DlistNode noTrab = head.next;		
		
		for(int i = 0 ; i < size ; i++) 
		{
			noTrab.item *= 2;
			noTrab = noTrab.next;
		}
		
	}
	
	public int retornaSegundoValor() { return head.next.next.item; }
	
	public int[] GeraArray() 
	{
		DlistNode noTrab = head.next;
		int[] array = new int[size];
		
		for(int i = 0 ; i < size ; i++) 
		{
			array[i] = noTrab.item;
			noTrab = noTrab.next;
		}
		return array;		
	}
	
	public boolean SearchLista(int valor) 
	{
		DlistNode noTrab = head.next;
		
		for(int i = 0 ; i < size ; i++) 
		{
			if(noTrab.item == valor) return true;	
			noTrab = noTrab.next;
		}	
		return false;
	}
}
