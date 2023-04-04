package uscs;

public class Main {

	 public static void main(String[] args) {

		 DList lista = new DList();
		 
		 lista.InsereItem(1);
		 lista.InsereItem(1);
		 lista.InsereItem(19);
		 lista.InsereItem(10);
		 lista.InsereItem(35);
		 
		 //lista.Imprime();
		 
		 int[] maiores = lista.RetornaDoisMaioresValores();
		 
		 for(int i = 0; i < maiores.length ; i++) 
		 {
			 System.out.println(maiores[i]);
		 }
	 }
}
