public class TesteConta {
    public static void main (String[] args) {
    Conta conta1 = new Conta("101","123456");
    conta1.creditar(300.0);
    conta1.debitar(100.0);
    conta1.creditar(200.0);
    System.out.println("Saldo conta 1 = "+conta1.getSaldo()); //400
    System.out.println("A conta 1 está vazia? "+conta1.vazia()); //false
    System.out.println(conta1.toString());

    Conta conta2 = new Conta("168","789012");
    conta2.creditar(1000.0);
    System.out.println("Saldo conta 2 = "+conta2.getSaldo()); //1000
    System.out.println(conta2.toString());

    conta1.transferir(50,conta2);
    System.out.println("Transferencia feita, valores após alteracao: ");
    System.out.println("Conta 1 = "+conta1.getSaldo()); //450
    System.out.println("Conta 2 = "+conta2.getSaldo()); //950
    }
}
