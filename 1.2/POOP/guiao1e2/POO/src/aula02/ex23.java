package aula02;

import java.util.Scanner;

public class ex23 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Insira a massa do corpo (kg) > ");
        double m = scanner.nextDouble();
        System.out.print("Insira a Ti do corpo (ºC) > ");
        double ti = scanner.nextDouble();
        System.out.print("Insira a Tf do corpo (ºC) > ");
        double tf = scanner.nextDouble();
        double enQ = (m * (tf - ti) * 4184);
        System.out.println("Energia > " + enQ + " J");
        scanner.close();
    }
}
