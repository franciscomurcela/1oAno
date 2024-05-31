package aula05;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Cir c1 = new Cir(0);
        Cir c2 = new Cir(0);
        Ret r1 = new Ret(0,0);
        Ret r2 = new Ret(0,0);
        Tri t1 = new Tri(0,0,0);
        Tri t2 = new Tri(0,0,0);

        int x = 0;
        do {
            System.out.println("0 - create circles");
            System.out.println("1 - create rectangles");
            System.out.println("2 - create triangles");
            System.out.println("3 - list figures");
            System.out.println("4 - compare figures");
            System.out.println("5 - exit");
            System.out.print("=> ");
            x = sc.nextInt();
            sc.nextLine();
            switch(x){
                case(0): criarCir2(c1, c2, sc);
                case(1): criarRet2(r1, r2, sc);
                case(2): criarTri2(t1, t2, sc);
                case(3): list(c1, c2, r1, r2, t1, t2);
                case(4): compare(c1, c2, r1, r2, t1, t2);
                default: break;
            } 
        }while(x != 5);
    }

    private static void criarCir2(Cir c1, Cir c2, Scanner sc) {
        System.out.println("=== Círculo 1 ===");
        criarCir(c1, sc);
        System.out.println("=== Círculo 2 ===");
        criarCir(c2, sc);
    }

    private static void criarRet2(Ret r1, Ret r2, Scanner sc) {
        System.out.println("=== Retângulo 1 ===");
        criarRet(r1, sc);
        System.out.println("=== Retângulo 2 ===");
        criarRet(r2, sc);
    }

    private static void criarTri2(Tri t1, Tri t2, Scanner sc) {
        System.out.println("=== Triângulo 1 ===");
        criarTri(t1, sc);
        System.out.println("=== Triângulo 2 ===");
        criarTri(t2, sc);
    }

    private static void list(Cir c1, Cir c2, Ret r1, Ret r2, Tri t1, Tri t2) {
        System.out.println("Círculo 1: " + c1.toString());
        System.out.println("Círculo 2: " + c2.toString());
        System.out.println("Retângulo 1: " + r1.toString());
        System.out.println("Retângulo 2: " + r2.toString());
        System.out.println("Triângulo 1: " + t1.toString());
        System.out.println("Triângulo 2: " + t2.toString());
    }

    private static void compare(Cir c1, Cir c2, Ret r1, Ret r2, Tri t1, Tri t2) {
        System.out.println("Círculo 1 = Círculo 2? " + c1.equals(c2));
        System.out.println("Retângulo 1 = Retângulo 2? " + r1.equals(r2));
        System.out.println("Triângulo 1 = Triângulo 2? " + t1.equals(t2));
    }

    private static void criarCir(Cir c, Scanner sc) {
        do {
            try {
                System.out.print("Insira o raio do círculo: ");
                c.setRaio(sc.nextFloat());
                if (c.Valid()) {
                    break;
                } else {
                    System.out.println("O raio só aceita valores positivos");
                }
            } catch(Exception str) {
                sc.nextLine();
                System.out.println("Tem de introduzir um número inteiro.");
            }
        }while(true);
    }

    private static void criarRet(Ret r, Scanner sc) {
        do {
            try {
                System.out.print("Insira a altura do retângulo: ");
                r.setAltura(sc.nextFloat());
                System.out.print("Insira o comprimento do retângulo: ");
                r.setComprimento(sc.nextFloat());
                if (r.Valid()) {
                    break;
                } else {
                    System.out.println("Só são aceites dimensões positivas.");
                }
            } catch(Exception str) {
                sc.nextLine();
                System.out.println("Tem de introduzir um número inteiro.");
            }
        }while(true);
    }

    private static void criarTri(Tri t, Scanner sc) {
        do {
            try {
                float a, b, c;
                System.out.print("Insira o lado 1: ");
                a = sc.nextFloat();
                System.out.print("Insira o lado 2: ");
                b = sc.nextFloat();
                System.out.print("Insira o lado 3: ");
                c = sc.nextFloat();
                t.setLados(a, b, c);
                if (t.Valid()) {
                    break;
                } else {
                    System.out.println("Só são aceites dimensões positivas e a desigualdade triangular tem de ser satisfeita.");
                }
            } catch(Exception str) {
                sc.nextLine();
                System.out.println("Tem de introduzir um número inteiro.");
            }
        }while(true);
    }
}
