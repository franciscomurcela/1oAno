package aula06;
import aula05.Data;

public class Bolseiro extends Aluno{
    private int mensal;

    Bolseiro(String nome, int cc, Data dataNasc, Data dataMatricula, int mensal) {
    super(nome, cc, dataNasc, dataMatricula);
    this.setMensal(mensal);    
    }

    Bolseiro(String nome, int cc, Data dataNasc, int mensal){
    super(nome, cc, dataNasc, new Data(java.time.LocalDate.now().getDayOfMonth(), java.time.LocalDate.now().getMonthValue(), java.time.LocalDate.now().getYear()));
    this.setMensal(mensal);
    }
    
    public int getMensal(){
        return mensal;
    }

    public void setMensal(int mensal){
        if (mensal>0){
            this.mensal = mensal;
        } else{
            System.out.println("Mensalidade inválida");
        }
    }

}
