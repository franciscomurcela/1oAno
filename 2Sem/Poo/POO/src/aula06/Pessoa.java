package aula06;
import aula05.Data;

public class Pessoa {
    private String nome;
    private int cc;
    private Data dataNasc;


    Pessoa(String nome, int cc, Data dataNasc){
        this.setNome(nome);
        this.setCC(cc);
        this.setdataNasc(dataNasc);
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

public Data getDataNasc(){
    return dataNasc;
}

public void setdataNasc(Data dataNasc){
    if (dataNasc.valid()){
        this.dataNasc = dataNasc;
    } else{
        System.out.println("Data inválida");
    }
}


@Override public String toString(){
    return this.getNome()+" "+this.getCC()+" "+this.getDataNasc();
        }
}