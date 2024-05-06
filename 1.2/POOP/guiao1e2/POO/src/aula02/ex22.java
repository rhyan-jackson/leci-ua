package aula02;
import java.util.Scanner;

public class ex22 {
    public static void main(String[] args) {
        System.out.print("Insira o valor em (°C) > ");
        Scanner sc = new Scanner(System.in);
        double celsius = sc.nextDouble();
        double fahrenheit = 1.8 * celsius + 32;
        System.out.println(fahrenheit);
        sc.close();
    }
}
