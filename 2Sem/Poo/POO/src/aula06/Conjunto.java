package aula06;
import java.util.*;

public class Conjunto {
    private Vector<Integer> conjunto = new Vector<Integer>(0);
    
    public void insert(int n){
        if (this.conjunto.contains(n))
            return;
        this.conjunto.addElement(n);
    }

    public boolean contains(int n){
        return this.conjunto.contains(n);
    }

    public void remove(int n){
        this.conjunto.removeElement(n);
    }

    public void empty(){
        this.conjunto.clear();
    }

    public String toString(){
        return this.conjunto.toString();
    }

    public int size(){
        return this.conjunto.size();
    }
  
    public Conjunto combine(Conjunto c){
        Conjunto c1 = new Conjunto();
        for (int i = 0; i < this.size(); i++){
            c1.insert(this.conjunto.elementAt(i));
        }
        for (int i = 0; i < c.size(); i++){
            c1.insert(c.conjunto.elementAt(i));
        }
        return c1;
    }

    public Conjunto subtract(Conjunto c){
        Conjunto c1 = new Conjunto();
        for (int i = 0; i < this.size(); i++){
            if (!c.contains(this.conjunto.elementAt(i))){
                c1.insert(this.conjunto.elementAt(i));
            }
        }
        return c1;
    }

    public Conjunto interset(Conjunto c){
        Conjunto c1 = new Conjunto();
        for (int i=0; i<this.size(); i++) {
            if (c.contains(this.conjunto.elementAt(i))){
                c1.insert(this.conjunto.elementAt(i));
            }
        }
        return c1;
    }

    

}
