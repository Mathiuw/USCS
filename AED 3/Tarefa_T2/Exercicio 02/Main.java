package USCS;
import java.util.Scanner;

public class Main {
	
	public static void main(String[] args) {
		Pilha_Char pilha = new Pilha_Char();
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Escreva a expressão: ");
		String palavra = scanner.next();
		scanner.close();
		
		//Transforma a palavra em um array de chars
		char[] palavraChar = palavra.toCharArray();
		
		//Insere o array de chars na pilha
		for(int i=0 ; i < palavraChar.length; i++) pilha.push(palavraChar[i]);
		
		//Imprime o resultado
		System.out.println("A palavra é um palindromo: " + pilha.IsPalindromo(palavra));
	}	
}