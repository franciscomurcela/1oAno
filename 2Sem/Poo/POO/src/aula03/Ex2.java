package aula03;
import java.lang.Math;
import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args){
        int num;
        Scanner sc = new Scanner(System.in);
    do{
        try{
            System.out.println("Insira um número natural: ");
            num=Math.abs(sc.nextInt());
            Math.abs(num);  
            if(num<0){
                System.out.println("O número tem de ser positivo");
                continue;
            }
            break;
        }   catch (Exception e){
            sc.nextLine();
            System.out.println("Tem de inserir um número: ");            
        }           

        
    
    }while(true);
    sc.close();
    while (num >= 0) {
        System.out.println(num);
        num--;
    }
}
}
