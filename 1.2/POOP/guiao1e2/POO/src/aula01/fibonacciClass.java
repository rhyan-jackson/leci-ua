package aula01;

public class fibonacciClass {
    public static void main(String[] args) {
        int a1 = 1;
        int a2 = 1;
        int aux = 1;
        System.out.println(a1);
        for (int i = 1; i <= 100; i++) {
            System.out.println(a2);
            aux = a1;
            a1 = a2;
            a2 = a2 + aux;
        }
    }
}
