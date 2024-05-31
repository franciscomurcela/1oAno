package aula02;
import java.util.Scanner;

public class Ex8 {
    public static void main(String[] args){
        double a,b,c,ang;
        Scanner sc = new Scanner(System.in);
        System.out.println("Insira o comprimento dos lados A e B");
        a=sc.nextDouble();
        b=sc.nextDouble();
        while (a <= 0){
            System.out.print("Insira um comprimento positivo: ");
            a = sc.nextDouble();
        }
        while (b <= 0){
            System.out.print("Insira um comprimento positivo: ");
            b = sc.nextDouble();
        }
        c=Math.pow(a,2)+Math.pow(b,2);
        c=Math.sqrt(c);
        ang=Math.toDegrees(Math.asin(a/c));
        sc.close();
        
        System.out.println("Hipotenusa: "+ c +", ângulo entre lado A e a hipotenusa: "+ ang);
        
    }
    
}
