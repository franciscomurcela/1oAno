package aula05;
import java.util.ArrayList;

public class Utilizador {
    private String nome; 
    private int nMec;
    private String curso;
    private ArrayList<Integer> ids_requisitados = new ArrayList<>();

    Utilizador(String nome, int nMec, String curso) {
        this.setNome(nome);
        this.setNumMec(nMec);
        this.setCurso(curso);
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNumMec(int nMec) {
        this.nMec = nMec;
    }

    public int getNumMec() {
        return this.nMec;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getCurso() {
        return this.curso;
    }

    public String getRequisitados() {
        String s = "";
        for (Integer id : this.ids_requisitados) {
            s += " " + id;
        }
        return s;
    }

    public int getNumRequisitados() {
        return this.ids_requisitados.size();
    }

    public String toString() {
        return "Aluno: " + this.getNumMec() + "; " + this.getNome() + "; " + this.getCurso() + ";" + this.getRequisitados();
    }

    public void requisitar(int id) {
        this.ids_requisitados.add(id);
    }

    public void devolver(int id) {
        for (Integer id_requisitado : this.ids_requisitados) {
            if (id_requisitado == id) {
                this.ids_requisitados.remove(id_requisitado);
                break;
            }
        }
    }
}
