package aula02;

import java.util.Scanner;

public class ex26 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int secondsInput = sc.nextInt();
        
        int hours = secondsInput / 3600;
        int minutes = (secondsInput % 3600) / 60;
        int secondsRemaining = secondsInput % 60;

        System.out.println(hours + ":" + minutes + ":" + secondsRemaining);
        
        sc.close();
    }
}
