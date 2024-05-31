package aula07.Ex2;

public class DateYMD extends Date {

    private int dia, mes, ano;

    public DateYMD(int dia, int mes, int ano){
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    
    public int getDia(){
        return this.dia;
    }

    public int getMes(){
        return this.mes;
    }

    public int getAno(){
        return this.ano;
    }

    public void setDia(int dia){
        this.dia = dia;
    }

    public void setMes(int mes){
        this.mes = mes;
    }

    public void setAno(int ano){
        this.ano = ano;
    }

    public String toString(){ 
        return this.dia+"/"+this.mes+"/"+this.ano;  
       } 

    
    public String getData(){
        return this.getDia() + "/" + this.getMes() + "/" + this.getAno();
    }

    
    
    public int monthDays() {
        if (mes == 2) {
            if (leapYear(ano)){
                return 29;
            } else{
            return 28;
            }
        }
        if (mes == 4 || mes == 6 || mes == 9 || mes == 11){
            return 30;
        } else{
        return 31;
        }
    }    

    

}
