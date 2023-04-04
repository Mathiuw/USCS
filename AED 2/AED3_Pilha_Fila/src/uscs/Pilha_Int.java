package uscs;

public class Pilha_Int {
	
	   int[] pilha;
       int topo;

       public Pilha_Int(int n) {

               pilha = new int[n];
               topo = -1;
       }

       public void Push(int item) {
            
               if (topo >= pilha.length - 1) System.out.println ("Pilha Cheia!");                     
               else  
               {
            	   topo = topo + 1;
                   pilha[topo] = item;
               }                      
       }

       public Integer Pop() {
              
           if (topo <= -1) {
               System.out.println("Pilha vazia!");
               return null;
           }
           else
           {
        	   topo = topo -1;
               return (pilha[topo+1]);           
           }          	  
       }
	
}
