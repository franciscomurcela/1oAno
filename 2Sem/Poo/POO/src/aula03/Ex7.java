package aula03;
import java.util.Random;
import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args) {
        String res;
        int c, num, num2;
        Scanner sc = new Scanner(System.in);
        
        num2=new Random().nextInt(100)+1;
        c=0;
        do{
            do{
                System.out.println("Insira um número: ");
                num=sc.nextInt();
                c++;

                if(num2>num){
                    System.out.println("O número inserido é demasiado alto.");
                }
                else if (num2<num){
                    System.out.println("O número inserido é demasiado baixo.");
                }
            }while(num2!=num);

            System.out.println("O número era: "+num2);
            System.out.println("Tentativas: "+c);

            System.out.println("Pretende continuar? Prima (S)im");
            res=sc.next().toLowerCase();  
        }while(res.equals("s")|| res.equals("sim"));
        sc.close();
}
}
