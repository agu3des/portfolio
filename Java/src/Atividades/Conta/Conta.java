public class Conta {
    private String numero;
    private String cpf;
    private double saldo;

    public Conta(String numero, String cpf) {
        this.numero = numero;
        this.cpf = cpf;
        this.saldo = 0; 
    }
    public void creditar(double valor) {
        saldo = saldo + valor; //altera o objeto, pois é void
    }
    public void debitar(double valor) {
        saldo = saldo - valor;//apenas executa uma tarefa
    }
    public double getSaldo() {
    	return saldo;
    }
    public void transferir(double valor, Conta destino) {
        this.debitar(valor);
        destino.creditar(valor);
    }
	public String toString() {
		return 
		"Dados do Cliente: " + 
		" Numero = " + numero +
		" | CPF = " + cpf + 
		" | Saldo = " + saldo;
	}
    public Boolean vazia() {
        return (saldo <= 0);
    }

}
