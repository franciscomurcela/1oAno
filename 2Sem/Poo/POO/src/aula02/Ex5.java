package aula02;
import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args){
        double V1,D1,V2,D2,VM;
        Scanner sc = new Scanner(System.in);
        System.out.println("Insira a Velocidade e Distância do primeiro trajeto: ");
        V1 = sc.nextDouble();
        D1 = sc.nextDouble();
        while (V1 <= 0){
            System.out.print("Insira uma velocidade positiva: ");
            V1 = sc.nextDouble();
        }
        while (D1 <= 0){
            System.out.print("Insira uma distância positiva: ");
            D1 = sc.nextDouble();
        }
        System.out.println("Insira a Velocidade e Distânciais do segundo trajeto: ");
        V2=sc.nextDouble();
        D2=sc.nextDouble();
        while (V2 <= 0){
            System.out.print("Insira uma velocidade positiva: ");
            V2 = sc.nextDouble();
        }
        while (D2 <= 0){
            System.out.print("Insira uma distância positiva: ");
            D2 = sc.nextDouble();
        }
        sc.close();

        VM=(D1+D2)/((D1/V1)+D2/V2);

        System.out.println("A velocidade média final é: "+ VM);
        

    }

    
}
