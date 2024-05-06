package aula02;

import java.util.Scanner;
import java.lang.Math;

public class ex24 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insert the amount > ");
        double amount = sc.nextDouble();
        System.out.print("Insert the tax > ");
        double tax = sc.nextDouble();

        double finalAmount = amount * Math.pow((1 + tax),3);
        // M = a * (1 + i)**t

        System.out.println("The final amount is " + finalAmount + " €");
        sc.close();
    }
}