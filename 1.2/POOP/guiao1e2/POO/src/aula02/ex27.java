package aula02;

import java.util.Scanner;
import java.lang.Math;

public class ex27 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Insira a coordenada x de p1 > ");
        double x1 = sc.nextDouble();

        System.out.print("Insira a coordenada y de p1 > ");
        double y1 = sc.nextDouble();

        System.out.print("Insira a coordenada x de p2 > ");
        double x2 = sc.nextDouble();

        System.out.print("Insira a coordenada y de p2 > ");
        double y2 = sc.nextDouble();

        double distance = Math.sqrt(Math.pow((x1 - x2), 2) + Math.pow((y1 - y2), 2));

        System.out.println(distance);


        sc.close();
    }
}
