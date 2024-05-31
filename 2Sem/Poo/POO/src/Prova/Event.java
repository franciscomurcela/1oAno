package Prova;
import java.time.LocalDate;
import java.util.ArrayList;

public class Event implements IEvent {
    private LocalDate date;
    private double totalPrice;
    private ArrayList<Activity> Atividade;

    public Event(ArrayList<Activity> Atividade, LocalDate date) {
        this.date = date;
        this.Atividade = Atividade;
    }

    public double totalPrice() {
        this.totalPrice=preco*nr;
        return totalPrice;
    }
    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Event addActivity(Activity activity) {
        Atividade.add(activity);
        return this;
    }


}
