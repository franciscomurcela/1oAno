package aula09.Ex1;

public class Date {
    private int dia, mes, ano, hora, min;

    public Date(int dia, int mes, int ano, int hora, int min) {
        this.setDia(dia);
        this.setMes(mes);
        this.setAno(ano);
        this.setHora(hora);
        this.setMin(min);
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }
 
    @Override
    public String toString() {
        return "data:"+ this.dia + "/" + this.mes + "/" + this.ano + "@" + this.hora + ":" + this.min;
    }
}
