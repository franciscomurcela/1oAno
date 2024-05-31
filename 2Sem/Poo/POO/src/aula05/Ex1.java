package aula05;
import java.util.Scanner;

public class Ex1 {
    int dia,mes,ano;
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Data data = new Data(0, 0, 0);
        int x = 0;
        do {
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("5 - exit");
            System.out.print("=> ");
            x = sc.nextInt();
            switch(x){
                case (1): definirData(data, sc);
                break;
                case (2): mostrarData(data);
                break;
                case (3): data.incrementDias(1);
                break;
                case (4): data.decrementDias(1); 
                break;
                default: break;
            }
        } while(x!=5);
        sc.close();
    }

    public static void definirData(Data data, Scanner sc) {
        int dia,mes,ano;
        do{
            System.out.println("Introduza uma data válida (dd/mm/aaaa): ");
            dia = sc.nextInt();
            mes = sc.nextInt();
            ano = sc.nextInt();
            data.setData(dia, mes, ano);
            if (data.valid()){
                break;
            }else {
                System.out.println("Data inserida não é válida.");
            }
        }while(true);
    }

    
    public static void mostrarData(Data data) {
        System.out.println(data);
    }
}
