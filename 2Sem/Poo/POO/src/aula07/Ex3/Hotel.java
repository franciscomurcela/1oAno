package aula07.Ex3;

public class Hotel extends Alojamentos{
    private String tipo;

    public Hotel(String cod, String nome, String local, double preco, double aval, String tipo) {
        super(cod, nome, local, preco, aval);
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        if (tipo.equals("Single") || tipo.equals("Double") || tipo.equals("Triple") || tipo.equals("twin")) {
            this.tipo = tipo;
        } else {
            System.out.println("Tipo de quarto inválido");
        }
        this.tipo = tipo;
    }

    public String toString() {
        return "Hotel: " + getNome() + " Localização: " + getLocal() + ", Preço: " + getPreco() + ", Avaliação: " + getAval() + " estrelas, Tipo: " + getTipo();
    }
    
}
