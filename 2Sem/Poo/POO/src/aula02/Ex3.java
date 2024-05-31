package aula02;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args){
        double M, TI, TF, Q;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira a quantidade de Água(Kilogramas): ");
        M = sc.nextDouble();
        while (M <= 0){
            System.out.print("Insira uma quantidade positiva: ");
            M = sc.nextDouble();
        }
        System.out.print("Insira a temperatura Inicial da Água (Celsius): ");
        TI = sc.nextDouble();
        System.out.print("Insira a temperatura Final da Água (Celsius): ");
        TF = sc.nextDouble();
        sc.close();
        Q=M*(TF-TI)*4184;
        System.out.print("Quantidade de energia necessária para mudar a temperatura da água: " + Q + "Joules");

    }    
}
