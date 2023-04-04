package uscs;

public class SList {
  
       int size;
       Node head;     

       public SList(int x) {             
    	   
               Node y = new Node(x);              
               Node z = new Node(x + 10);
            
               this.size = 2;
               this.head = y;
               this.head.next = z;
       }
}
