package ex01;
import java.util.Arrays;

public class Rectangle {

    double length;
    double height;

    public Rectangle(double length, double height) {
        this.length = length;
        this.height = height;
    }

    public double getPerimeter() {
        return 2 * length + 2 * height;
    }

    public double getArea() {
        return length * height;
    }

    public double[] getSidesArray() {
        double[] sidesArray = {length, height};
        Arrays.sort(sidesArray);
        return sidesArray;
    }

    @Override
    public String toString() {
        return String.format("Rectangle with length %.2f and height  %.2f.", length, height);
    }    

    public boolean equals(Rectangle obj) {
        if(Arrays.equals(this.getSidesArray(), obj.getSidesArray())) {
            return true;
        }
        return false;
    }

}
