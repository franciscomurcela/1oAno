package aula03;
import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        int ano, mes, dias;
        Scanner sc = new Scanner(System.in);

        do{
            try {
                System.out.print("Insira o ano: ");
                ano = sc.nextInt();
                if (ano>=0){
                    break;
                } else{
                    System.out.println("O ano tem de ser um número positivo");
                }
            } catch (Exception e) {
                sc.nextLine();
            }
        }while(true);
        do{
            try {
                System.out.print("Insira o mês: ");
                mes = sc.nextInt();
                if (mes >= 1 & mes <= 12) {
                    break;
                } else {
                    System.out.println("O valor introduzido tem de estar entre 1 e 12");
                }
            } catch (Exception e) {
                sc.nextLine();
                System.out.println("O valor introduzido tem de ser um número inteiro!");
            }
        }while(true);
        sc.close();

        if (mes == 2){        
            if (ano % 400 == 0) {
                dias = 29;
            } else if (ano % 100 == 0) {
                dias = 28;
            } if (ano % 4 == 0) {
                dias = 29;
            } else {
                dias = 28;
            }
        } else {
            if (mes==4 || mes==6 || mes==9 || mes==11) {
                dias = 30;
            } else {
                dias = 31;
            }
        }
        
        System.out.println("O mês "+mes+" do ano "+ano+" tem "+dias+" dias.");
    }
}