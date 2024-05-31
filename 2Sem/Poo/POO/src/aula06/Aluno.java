package aula06;
import aula05.Data;

public class Aluno extends Pessoa{
    private static int nmecg=0;
    private int nmec;
    private Data DataMatricula;


    Aluno(String nome, int cc, Data dataNasc, Data dataMatricula){
        super(nome, cc, dataNasc);
        this.setnmec();
        java.util.Date date = new java.util.Date();
        System.out.println(date);
    }  
    
    Aluno(String nome, int cc, Data dataNasc){
        super(nome, cc, dataNasc);
        this.setnmec();
        java.util.Date d = new java.util.Date(); 
        System.out.println(d);
    }
    public int getnmec(){
        return nmec;
    }

    private void setnmec(){
        this.nmec = nmecg++;
    }

    public Data getDataMatricula(){
        return this.DataMatricula;
    }

    public void setDataMatricula(Data dataMatricula){
        if (dataMatricula.valid()){
            this.DataMatricula=dataMatricula;
        } else{
            System.out.println("Data inválida");
        }
    }

@Override public String toString(){
   return "Nome: "+this.getNome()+"; CC: "+this.getCC()+"; Data de Nascimento: "+this.getDataNasc();
}
}

