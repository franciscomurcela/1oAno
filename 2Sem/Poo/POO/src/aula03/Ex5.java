package aula03;
import java.util.Scanner;
import java.lang.Math;

public class Ex5 {
    public static void main(String[] args){
        double I, M, T;
        Scanner sc = new Scanner(System.in);

        do{
            try{               
                System.out.println("Insira o montante investido: ");
                I=sc.nextDouble();
                if (I > 0 & I%1000 == 0){
                    break;
                } else{
                    System.out.println("Insira um montante positivo e múltiplo de 1000");
                }
            }catch (Exception e) {
                    sc.nextLine();
                    System.out.println("Tem de inserir um número.");
                }
        }while(true);
        do{    
            try{
                System.out.println("Insira a taxa de juro mensal: ");
                T=sc.nextDouble();
                if (0 <= T & T <= 5){
                    break;
                } else{
                    System.out.print("Insira uma taxa entre 0% e 5%: ");
                } 
            }catch(Exception e) {
                    sc.nextLine();
                    System.out.println("Tem de inserir um número.");
                }
        }while(true); 
        sc.close();
        M=I;
        int c;
        c=1;
        System.out.println("Montante por mês");
        for (int i = 1; i <= 12; i++) {
			M += M * (T / 100);
            System.out.println("Montante do "+c+" mês: "+ Math.round(M)+" Euros");
            c+=1;
        }
        M=Math.round(M);
        System.out.println("O montante ao final de 12 meses é: " +M+" Euros.");
        }
    }
