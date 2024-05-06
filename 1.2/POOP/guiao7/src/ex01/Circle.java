package ex01;

public class Circle extends Shape {
    private double radius;

    public Circle(String color, double radius) {
        super(color);
        this.radius = radius;

    }

    @Override
    public double calculatePerimeter() {
        return 2 * Math.PI * radius;
    }

    @Override
    public double calculateArea() {
        return Math.PI * Math.pow(radius, 2);

    }

    public double getArea() {
        return calculateArea();
    }

    public double getPerimeter() {
        return calculatePerimeter();
    }

    public double getRadius() {
        return radius;
    }

    public boolean equals(Shape shapeToCompare) {
        if (shapeToCompare instanceof Circle) {
            Circle circleToCompare = (Circle) shapeToCompare;

            boolean hasSameRadius = (radius == circleToCompare.getRadius());
            boolean hasSameColor = (this.getColor() == shapeToCompare.getColor());


            return hasSameRadius && hasSameColor;
        }

        return false;
    }
}
