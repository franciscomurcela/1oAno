package aula05;
import java.util.Scanner;
import java.util.ArrayList;

public class Ex5 {
    static Scanner sc = new Scanner(System.in);
    static ArrayList<Utilizador> alunos = new ArrayList<>();
    static ArrayList<Livro> livros = new ArrayList<>();
    public static void main(String[] args) {
        int x = 0;
        do {
            System.out.println("1 - inscrever utilizador");
            System.out.println("2 - remover utilizador");
            System.out.println("3 - imprimir lista de utilizadores");
            System.out.println("4 - registar um novo livro");
            System.out.println("5 - imprimir lista de livros");
            System.out.println("6 - emprestar");
            System.out.println("7 - devolver");
            System.out.println("8 - sair");
            System.out.print("=> ");
            x = sc.nextInt();
            sc.nextLine();
            switch(x){
                case 1: add();
                case 2: rem();
                case 3: list();
                case 4: addb();
                case 5: listb();
                case 6: reqb();
                case 7: retb();
                default: break;
            }
        } while(x!=8);
        sc.close();
        
    }

    public static void add() {
        String nome, curso;
        int nMec;
        if (alunos.size() < 100) {

            System.out.print("Nome: "); nome = sc.nextLine();
            System.out.print("Núm. Mec: "); nMec = sc.nextInt();
            sc.nextLine();
            System.out.print("Curso: "); curso = sc.nextLine();
            alunos.add(new Utilizador(nome, nMec, curso));
        } else {
            System.out.println("Lista de alunos está cheia.");
        }
    }

    public static void rem() {
        int nMec;
        System.out.print("Núm. Mec: "); 
        nMec = sc.nextInt();
        sc.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == nMec) {
                alunos.remove(aluno);
                return;
            }
        }
        System.out.println("Número mecanográfico não se encontra registado.");
    }

    public static void list() {
        for (Utilizador aluno : alunos) {
            System.out.println(aluno);
        }
    }

    public static void addb() {
        String t_imprestimo;
        if (livros.size() < 100) {
            System.out.print("Título: "); String titulo = sc.nextLine();
            System.out.print("Tipo de Empréstimo: "); 
            t_imprestimo = sc.nextLine();
            livros.add(new Livro(titulo, t_imprestimo));
        } else {
            System.out.println("Lista de livros está cheia.");
        }
    }

    public static void listb() {
        for (Livro livro : livros) {
            System.out.println(livro);
        }
    }

    public static void reqb() {
        int nMec, id;
        System.out.print("Núm. Mec: "); 
        nMec = sc.nextInt();
        sc.nextLine();
        System.out.print("ID Livro: "); 
        id = sc.nextInt();
        sc.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == nMec) {
                if (aluno.getNumRequisitados()<3) {
                    for (Livro livro : livros) {
                        if (livro.getId() == id) {
                            if (livro.getTipoEmprestimo().equals("NORMAL")) {
                                aluno.requisitar(livro.getId());
                                livro.setTipoEmprestimo("CONDICIONAL");
                                return;
                            } else {
                                System.out.println(livro.getTitulo() + "=> O livro não pode ser emprestado.");
                                return;
                            }
                        }
                    }
                    System.out.println("ID de livro não registado.");
                    return;
                } else {
                    System.out.println(aluno.getNome() + "=> O utilizador não pode requisitar mais livros.");
                    return;
                }  
            }
        }
        System.out.println("Número mecanográfico não se encontra registado.");
    }

    public static void retb() {
        int nMec, id;
        System.out.print("Núm. Mec: "); 
        nMec = sc.nextInt();
        sc.nextLine();
        System.out.print("ID Livro: "); 
        id = sc.nextInt();
        sc.nextLine();
        for (Utilizador aluno : alunos) {
            if (aluno.getNumMec() == nMec) {
                for (Livro livro : livros) {
                    if (livro.getId() == id) {
                        aluno.devolver(livro.getId());
                        livro.setTipoEmprestimo("NORMAL");
                        return;
                    }
                }
                System.out.println("ID de livro não registado.");
                return;
            }
        }
        System.out.println("Número mecanográfico não se encontra registado");
    }

}


