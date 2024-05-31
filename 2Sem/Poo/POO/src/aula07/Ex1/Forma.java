package aula07.Ex1;

public abstract class Forma {
    protected double area, perimetro;
    protected String cor;

    public abstract void setPer();
    public abstract void setArea();
    public abstract boolean FiguraVal();
    
    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getCor() {
        return this.cor;
    }

    public double getArea() {
        return this.area;
    }

    public double getPer() {
        return this.perimetro;
    }

    public boolean equals(Forma f){
        return this.toString().equals(f.toString());
    }
}
