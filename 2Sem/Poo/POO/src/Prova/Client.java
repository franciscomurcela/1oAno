package Prova;

public class Client {
    
    private String nome, loc;

    public Client(String nome, String loc){
    this.nome = nome;
    this.loc = loc;
}

public String getNome() {
    return nome;
}

public void setNome(String nome) {
    this.nome = nome;
}

public String getLoc() {
    return loc;
}

public void setLoc(String loc) {
    this.loc = loc;
}
    
@Override
    public String toString() {
        return "Cliente {" + "Nome : " + nome + ", localidade : " + loc + "}";
    }


   
}
