package Prova;

public class Culture implements Activity{
    int nr;
    int preco = 22;
    String opcao;

    public Culture(int nr, int preco) {
        this.nr = nr;
        this.preco = preco;
    }

    public int getNr() {
        return nr;
    }

    public void setNr(int nr) {
        this.nr = nr;
    }

    public int getPreco() {
        return preco;
    }

    public void setPreco(int preco) {
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
        return "Culture {" + "Nr : " + nr + ", Preco : " + preco + ", Opcao : " + opcao + "}";
    }    
}
