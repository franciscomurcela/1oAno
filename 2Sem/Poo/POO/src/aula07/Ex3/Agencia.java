package aula07.Ex3;
import java.util.*;

public class Agencia {
    private String nome, endereco;
    List<Alojamentos> alojamentos = new ArrayList<Alojamentos>();
    List<Carros> Carro = new ArrayList<Carros>();
    
    public Agencia(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public List<Alojamentos> getAlojamentos() {
        return alojamentos;
    }


    public List<Carros> getCarro() {
        return Carro;
    }


}
