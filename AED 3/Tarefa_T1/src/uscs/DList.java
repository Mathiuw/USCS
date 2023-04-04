package uscs;

public class DList {

		public int size;
		public DNode head;
		public DNode tail;
		
		public void InsereItem(int item) 
		{	
			DNode novoNode = new DNode(item);
			
			if(size == 0) 
			{
				head = novoNode;
				tail = novoNode;
			} 
			else 
			{
				head.prev = novoNode;
				novoNode.next = head;
				head = novoNode;
			}

			size++;
		}
		
		public void Imprime() 
		{
			DNode noTrab = head;
			
			for(int i = 0 ; i< size ; i++) 
			{
				System.out.println(noTrab.item);
				
				noTrab = noTrab.next;	
			}
		}
		
		public int RetornaMaiorValorPar() 
		{
			int maior = 0;
			DNode noTrab = head;
			
			for(int i = 0 ; i< size ; i++) 
			{
				if (noTrab.item % 2 == 0 && noTrab.item > maior) maior = noTrab.item;
				
				noTrab = noTrab.next;	
			}
			
			return maior;
		}	
		
		public int[] RetornaDoisMaioresValores() 
		{
			int maior1 = 0;
			int maior2 = 0;
			
			DNode noTrab = head;
			
			if(size < 2) return null;
			
			for(int i = 0 ; i < size ; i++) 
			{
				if (noTrab.item > maior1) maior1 = noTrab.item;
				
				noTrab = noTrab.next;	
			}
			
			noTrab = head;
			
			for(int i = 0 ; i < size ; i++) 
			{
				if (noTrab.item > maior2 && noTrab.item != maior1) maior2 = noTrab.item;
				
				noTrab = noTrab.next;	
			}
			
			int[] maiores = {maior1, maior2};
			
			return maiores;
		}
}