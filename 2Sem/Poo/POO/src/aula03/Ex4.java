package aula03;
import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args){
        double num, num2, soma, max, min;
        int c = 1;
        Scanner sc = new Scanner(System.in);
        System.out.print("Adicionar um valor: ");
        num = soma = max = min = sc.nextDouble();   
        while (true) {
                System.out.print("Adicionar um valor: ");
            	num2 = sc.nextDouble();
                c += 1;
                soma += num2;
                if (num2 < min){
                    min = num2;
                }
                if (num2 > max){
                    max = num2;
                }
                if (num2 == num){ 
                    break;
                }
            }
        sc.close();
        System.out.println("Valor máximo: "+ max +", mínimo: "+min+", média: "+ soma/c +", total de números lidos: "+c+".");       
        }
    }


    

