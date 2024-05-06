package ex01;

public class Main {
    public static void main(String[] args) {
        Triangle trian1 = new Triangle("Blue", 3, 3, 5);
        Triangle trian2 = new Triangle("Blue", 3, 3, 5);
        Triangle trian3 = new Triangle("White", 3, 3, 5);
        Triangle trian4 = new Triangle("White", 3, 6, 5);
        Circle circle1 = new Circle("Orange", 3);

        System.out.println(trian1.equals(trian2)); // true
        System.out.println(trian1.equals(trian3)); // false
        System.out.println(trian2.equals(trian3)); // false
        System.out.println(trian4.equals(circle1)); // false

    }
}

