package aula03;;

public class Ex8 {
    public static void main(String[] args) {
        double[] t = {10.2, 20.0, 1.2, 0.3, 18.2, 10.2, 18.1, 9.5, 6.8, 9.5, 7.5, 1.6, 17.7, 4.7, 15.1, 13.8}, p = {18.2, 14.5, 6.8, 12.1, 9.4, 16.5, 19.2, 17.6, 2.6, 20.0, 10.3, 9.7, 4.3, 11.2, 15.1, 1.1};

        System.out.println("NotaT \t NotaP \t Pauta");
        for (int i=0; i<t.length; i++) {   
            System.out.println(t[i]+""+p[i]+""+calcular(t[i],p[i]));
        }
    }

    //De forma a simplificar a solução decidi criar esta função que devolve 66 se alguma das componentes for menor que 7 ou a média na pauta.
    public static int calcular(double t, double p) {
        if (p < 7 || t < 7){
        return 66;
        } else{
        return (int)(0.4*t+0.6*p); //Aqui é preciso fazer o cast do valor arrendondado já que a função Math.round() devolve um valor do tipo long e não int.
        }
    }
}