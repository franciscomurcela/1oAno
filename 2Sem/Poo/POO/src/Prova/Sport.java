package Prova;

public class Sport implements Activity {
    int nr;
    double preco = 30;
    String opcao;
    
    public Sport(int nr, double preco) {
        this.nr = nr;
        this.preco = preco;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getOpcao() {
        return opcao;
    }

    public void setOpcao(String opcao) {
        if (opcao.equals("RIVER_TOUR") || opcao.equals("CITY_TOUR")) {
            this.opcao = opcao;
        } else {
            System.out.println("Opção desconhecida");
        }
    }

    @Override
    public String toString() {
        return "Sport {" + "Nr : " + nr + ", Preco : " + preco + ", Opcao : " + opcao + "}";
    }

}
