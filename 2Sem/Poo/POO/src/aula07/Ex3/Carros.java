package aula07.Ex3;

public class Carros {
    private char classe;
    private String tipo;
    private boolean alugado;

    public Carros(char classe, String tipo) {
        this.classe = classe;
        this.tipo = tipo;
        this.alugado = false;
    }

    public char getClasse() {
        return classe;
    }

    public void setClasse(char classe) {
        if (classe == 'A' || classe == 'B' || classe == 'C' || classe == 'D' || classe == 'E' || classe == 'F') {
            this.classe = classe;
        } else {
            System.out.println("Classe inválida");
        }
        this.classe = classe;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        if (tipo.equals("Eletrico") || tipo.equals("Diesel") || tipo.equals("Hibrido") || tipo.equals("Gasolina")) {
            this.tipo = tipo;
        } else {
            System.out.println("Tipo de carro inválido");
        }

    }   

    public boolean isAlugado() {
        return alugado;
    }

    public void setAlugado(boolean alugado) {        
        this.alugado = alugado;
    }

    @Override
    public String toString() {
        return "Carros{" + "classe=" + classe + ", tipo=" + tipo + ", alugado=" + alugado + '}';
    }
   
}
