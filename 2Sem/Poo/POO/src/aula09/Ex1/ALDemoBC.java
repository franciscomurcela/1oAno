package aula09.Ex1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;


public class ALDemoBC {
    public static void main(String[] args) {
        ArrayList<Integer> c1= new ArrayList<>();
        for(int i= 10; i<= 100; i+=10) 
            c1.add(i);
        System.out.println("Size: "+ c1.size());
        for(int i= 0; i< c1.size(); i++) 
            System.out.println("Elemento: "+ c1.get(i));
        
        ArrayList<String> c2= new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio"); 
        c2.remove(0);
        System.out.println(c2);        

        Set<Pessoa> c3 = new HashSet<>();

        c3.add(new Pessoa("João", 123456789, 913342312, 170, "Rua dos Pêssegos nº 130"));
        Iterator<Pessoa> i = c3.iterator();
        while (i.hasNext()) System.out.println(i.next());
        

        Set<Date> c4 = new TreeSet<>();

        c4.add(new Date(1, 1, 2000, 12, 00));
        Iterator<Date> j = c4.iterator();
        while (j.hasNext()) System.out.println(j.next());

    }
}

