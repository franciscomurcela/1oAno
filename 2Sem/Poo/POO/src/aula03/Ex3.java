package aula03;
import java.util.Scanner;

    public class Ex3 {
    public static void main(String[] args){
        int num, num1;
        boolean primo;
        Scanner sc = new Scanner(System.in);
        primo=true;
        do{
            try{
                System.out.println("Insira um número: ");
                num=sc.nextInt();
                num1=num;
                if (num<0){
                    System.out.println("O número tem de ser positivo");
                    continue;
                }
                break;
            }   catch (Exception e){
                sc.nextLine();
                System.out.println("Tem de inserir um número.");
            }
            sc.close();
            }while(true);
        while (num>2) {
            if (num%--num1 == 0) {
                primo = false;
                break;
            }
        }
        if(primo==true){
            System.out.println(num+ " é primo.");
        } else{
            System.out.println(num+ " não é primo");
        }
        }

      
    }
        
    
    
 

