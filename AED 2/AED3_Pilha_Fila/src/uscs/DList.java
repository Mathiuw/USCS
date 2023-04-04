package uscs;

public class DList {

		int size;
		Node head;
		Node tail;
		
		public void InsereItem(int item) 
		{
			Node noTrab = new Node(item);
			noTrab.next = head;
			head = noTrab;
			size++;
		}
		
		public void Imprime() 
		{
			Node noTrab = head;
			
			while (noTrab.next != null) 
			{
				System.out.println(noTrab.item);
				
				noTrab = noTrab.next;
			}
		}
		
		public int RetornaMaiorValorPar() 
		{
			int maior = 0;
			Node noTrab = head;
			
			while (noTrab.next != null) 
			{
				if (noTrab.item % 2 == 0 && noTrab.item > maior) 
				{
					maior = noTrab.item;
				} 
				
				noTrab = noTrab.next;
			}
			
			return maior;
		}
		
		
		
}