import java.util.Scanner;
import java.lang.Math;


public class ex2 {

    public static boolean validAmountInput(int amount) {
        if ((amount % 1000 == 0) && (amount > 0)) {
            return true;
        }
        return false;
    }

    public static boolean validTaxInput(double tax) {
        if (tax > 0 && tax < 5) {
            return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int amount = 0;
        boolean validAmount = false;

        while (!validAmount) { // Value input
            System.out.print("Insert an valid amount > ");
            amount = sc.nextInt();
            validAmount = validAmountInput(amount);
        }

        double tax = 0;
        boolean validTax = false;
        
        while (!validTax) { // Value input
            System.out.print("Insert an valid tax > ");
            tax = sc.nextDouble();
            validTax = validTaxInput(tax);
        }

        double finalAmount = amount * Math.pow((1 + tax/100), 12);
        
        System.out.println(finalAmount);
        sc.close();
    }
}
