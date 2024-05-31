package aula07.Ex3;

public class Apartamento extends Alojamentos {

    private int quartos;

    public Apartamento(String cod, String nome, String local, double preco, double aval, int quartos) {
        super(cod, nome, local, preco, aval);
        this.quartos = quartos;
    }

    public int getQuartos() {
        return quartos;
    }

    public void setQuartos(int quartos) {
        if (quartos > 0) {
            this.quartos = quartos;
        } else {
            System.out.println("Número de quartos inválido");
        }
        this.quartos = quartos;
    }

    public String toString() {
        return "Apartamento: " + getNome() + " Localização: " + getLocal() + ", Preço: " + getPreco() + ", Avaliação: " + getAval() + " estrelas, Quartos: " + getQuartos();
    }
    
}
