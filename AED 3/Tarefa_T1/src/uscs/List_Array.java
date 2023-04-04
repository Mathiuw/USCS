package uscs;

public class List_Array {

	int[] lista;
    int ultimo_item;  

    public List_Array() {

            lista = new int[0];
            ultimo_item = -1;
    }
    
    public void PList() {

        if (lista.length==0) System.out.println("Lista vazia...");
        else 
        {
        	for (int i=0; i<lista.length; i++) System.out.print("  " + lista[i]); 
        }
                                      
    }

    public void I_item(int novo_item) {

        int[] nova_lista = new int[lista.length+1];

        for (int i=0; i<lista.length; i++) nova_lista[i+1]=lista[i];

        nova_lista[0] = novo_item;
        lista = nova_lista;
        ultimo_item = lista.length-1;

    }

    public void A_item(int novo_item){
	 
        if (ultimo_item == -1) System.out.println("Lista vazia...");          
        else lista[ultimo_item] = novo_item ;
 	}
    
    public void D_item(){

        if (ultimo_item == -1) System.out.println("Lista vazia...");           
        else {
               int[] nova_lista = new int[lista.length-1];

               for (int i=0; i<lista.length-1; i++) nova_lista[i]=lista[i];                   

               lista = nova_lista;
               ultimo_item = lista.length-1;
        }

    }
    
}
