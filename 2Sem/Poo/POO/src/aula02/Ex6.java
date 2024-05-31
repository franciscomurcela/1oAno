package aula02;
import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args){
        int s,h,m;
        Scanner sc = new Scanner(System.in);
        System.out.println("Insira o tempo em segundos: ");
        s=sc.nextInt();
        while (s <= 0){
            System.out.print("Insira um tempo positivo: ");
            s = sc.nextInt();
        }
        sc.close();
        h=s/3600;
        s %= 3600;
        m = s/60;
        s %= 60;

        System.out.printf("O tempo em horas, minutos e segundos é %02d:%02d:%02d", h,m,s);
        sc.close();


    }

    
}
