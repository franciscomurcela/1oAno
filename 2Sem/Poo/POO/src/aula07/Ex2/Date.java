package aula07.Ex2;

public abstract class Date {

    private int dia, mes, ano;

    public boolean validMonth(){
        if(mes >= 1 && mes <= 12){
            return true;
        } else{
            return false;
        }
    }
    
    public boolean leapYear(int ano) {
        if ((this.ano % 4 == 0 && this.ano % 100 != 0) || this.ano % 400 == 0){
        return true;
        } else{
            return false;
        }
    } 
    
    public boolean valid() {
        if (this.validMonth() && this.dia <= this.monthDays() && this.dia >= 1 && this.ano>=1){
            return true;
        } else{
        return false;
        }
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

    public void setData(int dia, int mes, int ano){
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    
    public void incrementData() {
        this.dia++;
        if (this.dia > this.monthDays()) {
            this.dia = 1;
            this.mes++;
        if (this.mes > 12) {
            this.mes = 1;
            this.ano++;
        }
        }
    }

    public void decrementData() {
        this.dia--;
        if (this.dia < 1) {
            this.mes--;
            if (this.mes < 1) {
                this.mes = 12;
                this.ano--;
            }
            this.dia = this.monthDays();
        }
    }

    public void incrementDias(int dia) {
        for (int i = 0; i < dia; i++) {
            this.incrementData();
        }
    }

    public void decrementDias(int dia) {
        for (int i = 0; i < dia; i++) {
            this.decrementData();
        }
    }


    
    
}
