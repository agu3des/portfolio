package Aulas;
class Error {
	public static void main (String[] args){
		System.out.println("Hello World");
	}
}

// retire a aspa e o ponto e vírgula = erro de sintaxe
//se o nome da classe estiver diferente do arquivo = erro de execução
//pois ao gerar o class, este vai ser com o nome da função
// public static void Main (String[] args){ = é uma método de uma classe, mas não é o ponto de entrada de java
//     var int cont; = erro de semântica, o java não reconhece o var
//     System.out.println("Você digitou: " + cont); = erro de semântica, pois a variável não foi acessada
// }
// System.out.println("Você digitou: " + 1/0); = erro de execução