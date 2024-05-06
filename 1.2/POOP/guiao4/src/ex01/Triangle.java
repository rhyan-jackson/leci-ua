package ex01;
import java.util.Arrays;

public class Triangle {

    // Constructor
    private double l1;
    private double l2;
    private double l3;

    public Triangle(double lado1, double lado2, double lado3) {
        this.l1 = lado1;
        this.l2 = lado2;
        this.l3 = lado3;
    }

    public double getPerimeter() {
        return l1 + l2 + l3;
    }

    public double getArea() {
        double p = getPerimeter()/2; // p for Heron formula.
        return Math.sqrt(p * (p - l1) * (p - l2) * (p - l3));
    }

    public double[] getSidesArray() {
        double[] sidesArray = {l1, l2, l3};
        Arrays.sort(sidesArray);
        return sidesArray;
    }

    @Override
    public String toString() {
        double[] a = getSidesArray();
        return String.format("Triangle with sides %.2f,  %.2f,  %.2f.", a[0], a[1], a[2]);
    }    

    public boolean equals(Triangle obj) {
        if(Arrays.equals(this.getSidesArray(), obj.getSidesArray())) {
            return true;
        }
        return false;
    }

}
