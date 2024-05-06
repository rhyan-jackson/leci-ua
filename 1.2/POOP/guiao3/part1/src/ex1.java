import java.util.Scanner;
import java.lang.Math;

public class ex1 {

    public static boolean validateIntPositive(String value) {
        int valueParsed;
        try {
            valueParsed = Integer.parseInt(value);
        }
        catch (NumberFormatException e) {
            return false;
        }

        if (valueParsed > 0) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean isPrime(int value) {
        if (value == 1) {
            return false;
        }

        for (int i = 2; i < Math.sqrt(value); i++) {
            if (value % i == 0) {
                return false;
            }
        }

        return true;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String nInput;
        int appropriateInput;

        while (true) {
            System.out.print("Insert an pos. int. number > ");
            nInput = sc.nextLine();

            if (validateIntPositive(nInput)) {
                appropriateInput = Integer.parseInt(nInput);
                break;

            } else {
                System.out.println("Number inserted not an positive integer.");
            }
        }
        System.out.println(isPrime(appropriateInput));
        sc.close();
    }
}
