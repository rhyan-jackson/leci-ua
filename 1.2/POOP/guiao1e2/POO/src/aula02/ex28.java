package aula02;
import java.util.Scanner;

public class ex28 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Insira o valor do cateto A > ");
        double a = sc.nextDouble();

        System.out.print("Insira o valor do cateto A > ");
        double b = sc.nextDouble();

        double c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
        System.out.println(c);
        sc.close();
    }
}
