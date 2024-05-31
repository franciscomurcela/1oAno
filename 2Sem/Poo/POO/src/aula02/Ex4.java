package aula02;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args){
        double I, M, T;
        Scanner sc = new Scanner(System.in);
        System.out.println("Insira o montante investido: ");
        I=sc.nextDouble();
        while (I <= 0){
            System.out.print("Insira um montante positivo: ");
            I = sc.nextDouble();
        }
        System.out.println("Insira a taxa de juro mensal: ");
        T=sc.nextDouble();
        while (T <= 0){
            System.out.print("Insira uma tava positiva: ");
            T = sc.nextDouble();
        }    
        M=I;
        for (int i = 1; i <= 3; i++) {
			M += M * (T / 100);
		}
        System.out.println("O montante ao final de 3 meses é: " +M);
        sc.close();

    }    
}
