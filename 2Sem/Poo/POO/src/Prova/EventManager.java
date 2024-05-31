package Prova;
import java.util.Collection;
import java.util.Set;
import java.util.HashSet;
import java.time.LocalDate;


public class EventManager {
    
    private String nome;
    private HashSet<Client> clientes;
    private HashSet<Event> eventos;

    public EventManager(String nome){
        this.nome = nome;
        this.clientes = new HashSet<Client>();
    }

    public String getNome(){
        return nome;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }

    public HashSet<Client> getClient() {
        return clientes;
    }

    public void setClients(HashSet<Client> clientes) {
        this.clientes = clientes;
    }

    public addClient(String nome, String loc) {
        for (Client c : clientes) {
            if (clientes.contains(c)) {
                System.out.println("Cliente já está inscrito");
            } else {
                clientes.add(c);
            }
        }
    }

    public void listClients() {
        for (Client c : clientes) {
            System.out.println(c);
        }
    }

    public void listEvents() {
        for (Event e : eventos) {
            System.out.println(e);
        }
    }

    public void addEvent(String nome, LocalDate date) {
        Event e = new Event(nome, date);
    }
    
}


