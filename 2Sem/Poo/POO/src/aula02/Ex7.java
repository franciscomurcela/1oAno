package aula02;
import java.lang.Math;
import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args){
        double x1, x2, y1, y2, d, x, y;
        Scanner sc = new Scanner(System.in);
        System.out.println("Coordenadas do 1º ponto");
        x1=sc.nextDouble();
        y1=sc.nextDouble();
        System.out.println("Coordenadas do 2º ponto");
        x2=sc.nextDouble();
        y2=sc.nextDouble();
        x=(x2-x1);
        y=(y2-y1);
        sc.close();

        d=Math.sqrt(Math.pow(x, 2)+Math.pow(y,2));

        
        System.out.println("Distância entre o 1º ponto e o 2º ponto: "+ d);



    }    
}
