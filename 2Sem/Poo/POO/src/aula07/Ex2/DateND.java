package aula07.Ex2;

public class DateND extends Date {
    private int rangedias;

    public DateND(int dia, int mes, int ano) {
        setData(dia, mes, ano);
    }

    private DateYMD converterData() {
        DateYMD x = new DateYMD(1, 1, 2000);
        if (rangedias < 0) x.decrementData();
        else if (rangedias > 0) x.incrementData();
        return x;
    }

    public void setData(int dia, int mes, int ano) {
        //int ano2 = Math.abs(ano - 2000);
        //int mes2 = Math.abs(mes - 1);
        //int dia2x = Math.abs(dia - 1);
    }

    public int getDia() {
        return this.converterData().getDia(); 
    }

    public int getMes() { 
        return this.converterData().getMes();
    }

    public int getAno() {
        return this.converterData().getAno();
    }

    public void incrementar() {
        rangedias++;
    }
    
    public void decrementar() {
        rangedias--; 
    }

    public int comparar(DateND data) {
        if (this.rangedias == data.rangedias) return 0;
        else if (this.rangedias < data.rangedias) return -1;
        else return 1;
    }
    
}