package ex01;

abstract class Shape implements Perimeter, Area{
    private String color;

    Shape(String color) {
        this.color = color;
    }

    public String getColor() {
        return color;
    }
}
