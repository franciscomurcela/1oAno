package aula05;

public class Tri {
    private float a, b, c, area, perimetro;

    Tri(float a, float b, float c) {
        this.setLados(a, b, c);
        this.Area();
        this.Per();
    }

    public void setLados(float a, float b, float c) {
        this.a = a;
        this.b = b;
        this.c = c;
        this.Area();
        this.Per();
    }

    public String getLados() {
        return "a:" + this.a + ", b:" + this.b + ", c:" + this.c;
    }

    public float getArea() {
        return this.area;
    }

    public float getPerimetro() {
        return this.perimetro;
    }

    public boolean Valid() {
        if (this.a<=0 || this.b<=0 || this.c<=0){
            return false;
        }
        if (this.a+this.b<=this.c || this.a+this.c<=this.b || this.b+this.c<=this.a){
            return false;
        }
        return true;
    }

    public String toString() {
        return "Triangulo => " + this.getLados() + ", Área:" + this.area + ", Perímetro:" + this.perimetro;
    }

    public boolean equals(Tri c) {
        return (this.getLados().equals(c.getLados()));
    }

    private void Area() {
        float s = (this.a + this.b + this.c) / 2;
        this.area = (float) Math.sqrt(s * (s - this.a) * (s - this.b) * (s - this.c));
    }
    
    private void Per() {
        this.perimetro = this.a + this.b + this.c;
    }
}
