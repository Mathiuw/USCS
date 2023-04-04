package uscs;

public class DNode {

		public int item;
		public DNode next;
		public DNode prev;
		
		public DNode(int item) 
		{
			this.item = item;
			next = null;
			prev = null;
		}
		
		public DNode(){	}
}
