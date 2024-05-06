package ex01;
public class Circle {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public double getPerimeter() {
        return (2 * Math.PI * radius);
    }

    public double getArea() {
        return (Math.PI * Math.pow(radius, 2));
    }
    
    @Override
    public String toString() {
        return String.format("Circle with radius %.2f.", radius);

    }

    public boolean equals(Circle obj) {
        if (obj.getRadius() == radius) {
            return true;
        }

        return false;
    }
    
}