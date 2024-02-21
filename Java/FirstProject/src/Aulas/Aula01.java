package Aulas;

import java.util.Scanner;
import javax.swing.JOptionPane;
import java.util.Random;
import java.util.Collections;

public class Aula01 {
	public static void main(String[] args) {
		int a = 0; //valor
		Integer b = 4; //objeto
		a = b + 1; //5
		b = a + 2; //7
		
		double x;
		long lo; //inteiro longo
		x = Math.abs(-3); // 3 (modulo)
		x = Math.pow(2,3); // 8 (potencia)
		x = Math.sqrt(16); // 4 (raiz)
		lo= Math.round(2.75); // 3 (arredonda)
		x = Math.floor(2.4); // 2.0 (piso)
		x = Math.ceil(2.4); // 3.0 (teto)
		x = Math.sin(3.1415); // 0
		x = Math.PI; // valor de pi
		
        //classe | variável | criação objeto | método construtor pa inicializar do objeto  
		String nome = new String("joao da silva"); //novo objeto
		Random sorteio = new Random();
		Scanner teclado = new Scanner(System.in); //variável dentro da classe system

        //variaveldereferencia.método(...)
        int i = nome.length(); //método do tipo int
        lista.clear(); //método do tipo void

        //ClasseUtilitaria.método(...)
        double x = Math.sqrt(16); //método do tipo double
        Collections.sort(lista); //método do tipo void

        String s;
        s = ""; //um objeto com 0 caractere
        s = "a"; //um objeto com 1 caractere
        s = "sala" + "1002"; //concatenação

        String n = "ana";
        String d = "ANA";
        if (n.equals(d))

        System.out.println("igual");

        else

        System.out.println("diferente"); //ok

        if (n.equalsIgnoreCase(d))

        System.out.println("igual"); //ok

        else

        System.out.println("diferente");


	}
}


/*import java.util.Scanner;

public class Amigo {

	public static void main(String[] args) {

		Scanner teclado = new Scanner(System.in);
		System.out.println("Qual é o seu nome?");
		String nome1 = teclado.nextLine();
		System.out.println(nome1+", de quem vc é amigo?");
		String nome2 = teclado.nextLine();
		System.out.println(nome1 +" é amigo de "+ nome2);
		teclado.close();

	}

}*/

/* import javax.swing.JOptionPane;
public class Amigo2 {
	public static void main(String[] args){
		String nome1 = JOptionPane.showInputDialog( //onde usava teclado usa diretamente o windows
		"Qual é o seu nome?");
		String nome2 = JOptionPane.showInputDialog(
		nome1 + ", de quem vc é amigo?");
		JOptionPane.showMessageDialog(null,
		nome1 +" é amigo de "+ nome2);
	}
}*/