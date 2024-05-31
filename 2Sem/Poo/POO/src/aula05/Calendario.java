package aula05;

public class Calendario {

    private int dia, year;

    Calendario(int dia, int year) {
        this.dia = dia;
        this.year = year;
    }

    public int getdia(){
        return dia;
    }
          
    public void setdia(int dia){
        this.dia = dia;
    }

    public int getYear(){
        return year;
    }

    public void setYear(int year){
        this.year = year;
    }



    private int diaMes(int mes) {
        Data data = new Data(1,1,this.year);
        int dia_inicio_mes = this.dia;
        while(data.getMes() < mes) {
            data.incrementDias(1);
            if (dia_inicio_mes == 7) dia_inicio_mes = 1;
            else dia_inicio_mes++;
        }
        return dia_inicio_mes;
    }


    public String desenharCalendario(int mes) {
        final String[] meses = { "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};

        return "\n" +"     "+ (meses[mes - 1]) + "\n" + "Su Mo Tu We Th Fr Sa" + "\n" + construtorDeString(mes) + "\n";
    }


    private String construtorDeString(int mes) {
        Data data = new Data(1,mes,year);
        int dias = data.monthDays();
        int inicio_do_mes = this.diaMes(mes);
        int dia_semana = this.diaMes(mes);
        String dias_espacos = new String("   ".repeat(inicio_do_mes));

        for (int i = 1; i <= dias; i++) {
            if (dia_semana == 1) {
                dias_espacos += String.format("%1d ", i);
                dia_semana++;
            } else if (dia_semana == 7) {
                dias_espacos += String.format("%1d\n", i);
                dia_semana = 1;
            } else {
                dias_espacos += String.format("%1d ", i);
                dia_semana++;
            }
        }
        return dias_espacos;
    }

    public String toString() {
        String calendAno = "";
        for (int i=1; i<=12; i++) {
            calendAno += this.desenharCalendario(i);
        }
        return calendAno;
    }
}
    



