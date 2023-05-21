package USCS;
import java.util.Scanner;

public class Main {
	
	public static void main(String[] args) {
		Pilha_Char pilha = new Pilha_Char();
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Escreva a expressão: ");
		String expressao = scanner.nextLine();
		scanner.close();
		
		System.out.println("Expressão = " + expressao);
		
		char[] expressaoChar = expressao.toCharArray();
		
		for(int i=0 ; i < expressaoChar.length; i++) pilha.push(expressaoChar[i]);
		
		pilha.Parametrizaçao('(', ')');
		pilha.Parametrizaçao('[', ']');
		pilha.Parametrizaçao('{', '}');
	}	
}
