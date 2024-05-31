package aula11.Ex2;

import java.util.HashMap;
import java.util.Scanner;
import java.io.FileReader;
import java.io.IOException;

public class Voo {
    private String h;
    private String id;
    private String companhia;
    private String origem;
    private String delay;
    private String obs;
    private static HashMap<String, String> companhias = new HashMap<>();


    public Voo(String h, String id, String origem, String delay) throws IOException {
        this.h = h;
        this.id = id;
        this.origem = origem;
        this.delay = delay;
        if (this.delay == "") {
            this.obs = "";
        } else {
            this.obs = "Previsto: " + this.getPrevisao();
        }
        this.companhia = getCompanhias().get(this.id.substring(0, 2));
    }

    public String getCompanhia() {
        return companhia;
    }

    public String getHora() {
        return h;
    }

    public String getId() {
        return id;
    }

    public String getOrigem() {
        return origem;
    }

    public String getAtraso() {
        return delay;
    }

    public int getAtrasoSegundos() {
        return Integer.parseInt(this.getAtraso().substring(0, 2))*3600 + Integer.parseInt(this.getAtraso().substring(3, 5))*60; 
    }

    public String getObs() {
        return obs;
    }

    private String getPrevisao() {
        int h_previsao_int = Integer.parseInt(this.h.substring(0, 2)) + Integer.parseInt(this.delay.substring(0, 2));
        int minuto_previsao_int = Integer.parseInt(this.h.substring(3, 5)) + Integer.parseInt(this.delay.substring(3, 5));

        if (minuto_previsao_int >= 60) {
            h_previsao_int += 1;
            minuto_previsao_int -= 60;
        }
        if (h_previsao_int >= 24) {
            h_previsao_int -= 24;
        }

        return String.format("%02d:%02d", h_previsao_int, minuto_previsao_int);
    }

    @Override
    public String toString() {
        return String.format("%-7s %-8s %-20s %-21s %-7s %-20s", this.h, this.id, this.companhia, this.origem, this.delay, this.obs);
    }

    private HashMap<String, String> getCompanhias() throws IOException {
        if (companhias.isEmpty()) {
            Scanner txtCompanhias = new Scanner(new FileReader("src/aula11/Ex2/companhias.txt"));
            txtCompanhias.nextLine();
            while (txtCompanhias.hasNext()) {
                String[] companhia = txtCompanhias.nextLine().split("\t");
                companhias.put(companhia[0], companhia[1]);
            }
        }
        return companhias;
    }

}