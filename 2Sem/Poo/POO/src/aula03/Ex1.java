package aula03;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args){
        String nome;
        double NP,NT,NF;
        Scanner sc = new Scanner(System.in);
        System.out.println("Insira o seu nome: ");
        nome=sc.nextLine();
        System.out.println("Insira a Nota da componente prática: ");
        NP = sc.nextDouble();
     
        while (NP > 20 || NP < 0 ){
            System.out.println("Este valor não é válido para a nota, tem de estar entre 0 e 20");
            NP = sc.nextDouble();
        }
        System.out.println("Insira a Nota da componente teórica");
        NT = sc.nextDouble();
        while (NT > 20 || NT < 0 ){
            System.out.println("Este valor não é válido para a nota, tem de estar entre 0 e 20");
            NT = sc.nextDouble();
        }

        if (NP < 7.0 || NT < 7.0){
            System.out.println("66");
        }
        else{
            NF=0.4*NT+0.6*Math.round(NP);
            System.out.println(nome+" a sua nota final equivale a "+NF);
            
        }
        sc.close();

    }


    
}
