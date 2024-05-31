package aula09.Ex1;

public class Pessoa {
    private String nome, morada;
    private int cc, telefone, altura;    

    Pessoa(String nome, int cc, int telefone, int altura, String morada) {
        this.setNome(nome);
        this.setCC(cc);
        this.setTelefone(telefone);
        this.setAltura(altura);
        this.setMorada(morada);
    }



public String getNome(){
    return nome;
}

public void setNome(String nome){
    this.nome = nome;
} 

public int getCC(){
    return cc;
}

public void setCC(int cc){
    this.cc = cc;
}

public int getTelefone(){
    return telefone;
}

public void setTelefone(int telefone){
    this.telefone = telefone;
}

public int getAltura(){
    return altura;
}

public void setAltura(int altura){
    this.altura = altura;
}

public String getMorada(){
    return morada;
}

public void setMorada(String morada){
    this.morada = morada;
}

@Override public String toString(){
    return this.getNome()+" "+this.getCC()+" "+ this.getTelefone()+" "+this.getAltura()+" "+this.getMorada();
    }
}
