import java.util.Random;
import java.util.Scanner;

class Aleatório {
    public static void main(String[] args) {
		Random sorteio = new Random();
        int numero;
        for(int i=1; i<=6; i++) {
            numero = sorteio.nextInt(60) +1; //de um a 60
            System.out.println(numero);
        }
    }
}


class Senha {
    public static void main(String[] args) {
    	Scanner teclado = new Scanner(System.in);
    	System.out.println("digite a senha");
    	String senha = teclado.nextLine();
    	while(!senha.equals("ifpb") ) { //equalsIgnoreCase()
	    	System.out.println("tente outra vez");
	    	senha = teclado.nextLine();
    	}
    	teclado.close();
    	System.out.println("ok, vc acertou"); //se acertar já vai direto de 0-n
    }
}

class Sorteio {
    public static void main(String[] args) {
		Random sorteio = new Random();
        int numero;
        do{
        	numero = sorteio.nextInt(60);
        	System.out.println(numero); //bloco seja usado pelo menos uma vez de 1-n
    	}
    	while(numero != 51) ;
        }
}


class Array{
	public static void main(String args[]){
		int[] numeros = new int[4] ;
		numeros[0] = 8;
		numeros[1] = 2;
		numeros[2] = 9;
		numeros[3] = 2;
		//int[] numeros = {8,2,9,2};
		System.out.println(numeros.length);
		System.out.println(numeros[0]);
		System.out.println(numeros[3]);
		System.out.println(numeros[2]);
	}
}