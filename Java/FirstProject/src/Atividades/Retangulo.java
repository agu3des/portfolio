public class Retangulo {
	public int id; // identificar qual o objeto
	public double largura; // atributo
	public double comprimento;

	public Retangulo(int id, double largura, double comprimento) { //meu construtor
		this.id = id;
		this.largura = largura;
		this.comprimento = comprimento;
	}

	public Retangulo() {  //construtor vazio, só cria o objeto
	}

	public double calcularArea() { // método
		return largura * comprimento;
	}

	public double calcularPerimetro() {
		return largura * 2 + comprimento * 2;
	}

	public double calcularDiagonal() {
		double comprimentoQ = Math.pow(comprimento, 2);
		double larguraQ = Math.pow(largura, 2);
		return Math.sqrt(comprimentoQ + larguraQ);
	}

	public double enquadrar() {
		comprimento = largura;
		double quadrado = comprimento;
		return quadrado;
	}

    public void redimensionar(double fatorDeRed) { //void pq não retorna nada
        this.largura *= fatorDeRed;
        this.comprimento*=fatorDeRed; 
    }

    public boolean ehQuadrado() {
        return (largura == comprimento);
    }
}

