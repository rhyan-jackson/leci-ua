package aula02;
import java.util.Scanner;

public class ex211 {

    public static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        try {
            int i = Integer.parseInt(strNum);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }

    public static void request(String[] args) {
        int[] interval = {1, 10};
        String input;
        Scanner sc = new Scanner(System.in);

        while (true) {
            System.out.printf("Insert numbers on this interval: [%d, %d] > ", interval[0], interval[1]);
            input = sc.nextLine();

            if (input.equals("fim")){
                break;
            }

            if (isNumeric(input)) {
                int inputInt = Integer.parseInt(input);
                if (inputInt >= interval[0] && inputInt <= interval[1]) {
                    System.out.println("OK!");
                } else {
                    System.out.printf("Number %d is not on the interval [%d, %d].%n", inputInt, interval[0], interval[1]);
                }
            } else {
                System.out.println("This input is not numeric.");
            }

        }
        sc.close();

        
    }
    public static void main(String[] args) {
        request(args);
    }
}
