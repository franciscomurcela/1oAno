package aula09.Ex1;

import java.util.ArrayList;
import java.util.Collections;
public class ALDemoA {
    public static void main(String[] args) {
        boolean x;
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
        c2.add(0, "Frio");
        c2.add("Nevoeiro");
        c2.add("Trovoada");
        System.out.println(c2.indexOf("Vento"));
        Collections.sort(c2);
        System.out.println(c2.lastIndexOf("Vento"));
        ArrayList<String> c3 = new ArrayList<>(); 
        c3.subList(0, 0);
        System.out.println(c3);
       
        x=true;
        while (x){
                c2.remove(0);
                x = c2.get(0).contains("\\w{1,}");
                System.out.println(x);
                if (c2.size()==1) x=false;
        }
        System.out.println(c2);

        
    }
}