import java.util.ArrayList;
//classe genérica, vira uma lista de qualquer coisa

public class Pilha {
    private ArrayList<T> dados = new ArrayList<>(); 
                    //<T> o usuário que irá dizer o que quer
    public void empilhar(T s) {
        dados.add(s); //adicionar um elemento na lista
    }

    public void desempilhar() {
        dados.remove(dados.size()-1);
    }

    public boolean estaVazia() {
        return dados.isempity();
    }

    public String topo() {
        return dados.get(dados.size()-1);//pega o ultimo do array
    }
    
    public void esvaziar() {
        dados.clear()
    }

    public int tamanho() {
        return dados.size();
    }

    public String toString() {
        return "Pilha" + dados.toString();
    }
}