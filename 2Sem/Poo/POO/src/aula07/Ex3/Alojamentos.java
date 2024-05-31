package aula07.Ex3;

public class Alojamentos {
    private String cod, nome, local;
    private double preco, aval;
    private boolean alugado;

    public Alojamentos(String cod, String nome, String local, double preco, double aval) {
        this.cod = cod;
        this.nome = nome;
        this.local = local;
        this.preco = preco;
        this.aval = aval;
        this.alugado = false;
    }

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public double getAval() {
        return aval;
    }

    public void setAval(double aval) {
        if (aval >= 1 && aval <= 5) {
            this.aval = aval;
        } else {
            System.out.println("Avaliação inválida");
        }
        this.aval = aval;
    }

    public boolean isAlugado() {
        return alugado;
    }

    public void setAlugado(boolean alugado) {
        this.alugado = alugado;
    }

}
