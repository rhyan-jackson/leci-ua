package ex01;
public class Principal {
    public static void main(String[] args) {
        // Circle circle1 = new Circle(10);
        // Circle circle2 = new Circle(20);
        // Circle circle3 = new Circle(10);

        // System.out.println(circle1.equals(circle2)); // False
        // System.out.println(circle1.equals(circle3)); // True
        // System.out.println(circle1); // Circulo de raio <x>.

        // Triangle triangle1 = new Triangle(5, 4, 1);
        // Triangle triangle2 = new Triangle(1, 4, 5);
        // Triangle triangle3 = new Triangle(3, 9, 7);

        // System.out.println(triangle1.equals(triangle2)); // true
        // System.out.println(triangle1.equals(triangle3)); // false
        // System.out.println(triangle1.getArea());
        // System.out.println(triangle1.getPerimeter());
        // System.out.println(triangle1.getSidesArray());

        Rectangle ret1 = new Rectangle(10, 5);
        Rectangle ret2 = new Rectangle(5, 10);
        Rectangle ret3 = new Rectangle(20, 10);

        System.out.println(ret1.equals(ret2)); // true
        System.out.println(ret1.equals(ret3)); // false
        System.out.println(ret1.getArea());
        System.out.println(ret1.getPerimeter());
        System.out.println(ret1.getSidesArray());

    }
}
