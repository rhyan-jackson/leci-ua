package aula02;
import java.util.Scanner;

public class ex21 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira o valor (km) > ");
        double kmValue = sc.nextDouble();
        System.out.println((kmValue / 1.609) + " miles.");
        sc.close();
    }
}
