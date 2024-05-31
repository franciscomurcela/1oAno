package Prova;

public class Catering implements Activity {

    int nr;
    int preco = 25;
    String opcao;

    public Catering(int nr, int preco) {
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
        if (opcao.equals("Festa") || opcao.equals("Passeio")) {
            this.opcao = opcao;
        } else {
            System.out.println("Opção desconhecida");
        }
    }

    @Override
    public String toString() {
        return "Catering {" + "Nr : " + nr + ", Preco : " + preco + ", Opcao : " + opcao + "}";
    }
    
}
