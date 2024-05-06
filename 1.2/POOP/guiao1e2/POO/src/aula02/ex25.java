package aula02;

import java.util.Scanner;

public class ex25 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double v1;
        while (true) {
            System.out.print("Insert the speed in the trajectoy 1 > ");
            v1 = sc.nextDouble();
            if (v1 <= 0) {
                System.out.println("Insert an correct value.");
            } else {
                break;
            }
        }

        double d1;
        while (true) {
            System.out.print("Insert the distance in the trajectoy 1 > ");
            d1 = sc.nextDouble();
            if (d1 > 0) {
                break;
            } else {
                System.out.println("Insert an correct value.");
            }
        }
        
        double v2;
        while (true) {
            System.out.print("Insert the speed in the trajectoy 2 > ");
            v2 = sc.nextDouble();
            if (v2 > 0) {
                break;
            } else {
                System.out.println("Insert an correct value.");
            }
        }
        double d2;
        while (true) {
            System.out.print("Insert the distance in the trajectoy 2 > ");
            d2 = sc.nextDouble();
            if (d2 > 0) {
                break;
            } else {
                System.out.println("Insert an correct value.");
            }
        }
        
        double timeTraj1 = d1 / v1;
        double timeTraj2 = d2 / v2;

        double averageSpeed = (d1 + d2) / (timeTraj1 + timeTraj2);
        
        System.out.print("Average speed: " + averageSpeed);
        sc.close();
}
}
