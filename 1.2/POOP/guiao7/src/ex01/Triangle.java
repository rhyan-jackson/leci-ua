package ex01;

import java.util.HashSet;

public class Triangle extends Shape {
    private double side1, side2, side3;

    public Triangle(String color, double side1, double side2, double side3) {
        super(color);

        if (!isValidTriangle(side1, side2, side3)) {
            throw new IllegalArgumentException("Must be an valid Triangle.");
        }

        this.side1 = side1;
        this.side2 = side2;
        this.side3 = side3;

    }

    @Override
    public double calculatePerimeter() {
        return side1 + side2 + side3;
    }

    @Override
    public double calculateArea() {
        double s = calculatePerimeter() / 2; // Semi Perimeter - Heron's Formula
        return Math.sqrt(s * (s - side1) * (s - side2) * (s - side3));

    }

    public double getArea() {
        return calculateArea();
    }

    public double getPerimeter() {
        return calculatePerimeter();
    }

    public static boolean isValidTriangle(double side1, double side2, double side3) {
        return (side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1);
    }

    public HashSet<Double> getSetOfSides() {
        HashSet<Double> setOfSides = new HashSet<Double>();

        setOfSides.add(this.side1);
        setOfSides.add(this.side2);
        setOfSides.add(this.side3);

        return setOfSides;
    }


    public boolean equals(Shape shapeToCompare) {
        if (shapeToCompare instanceof Triangle) {
            Triangle triangleToCompare = (Triangle) shapeToCompare;

            boolean hasSameSides = (this.getSetOfSides().equals(triangleToCompare.getSetOfSides()));
            boolean hasSameColor = (this.getColor() == shapeToCompare.getColor());


            return hasSameSides && hasSameColor;
        }

        return false;
    }
}
