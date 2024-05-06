import java.util.Random;
import java.util.Scanner;

public class ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random randObj = new Random();
        int secret = randObj.nextInt(100);

        while (true) {
            System.out.print("Input > ");
            int ttry = sc.nextInt();
            if (ttry == secret) {
                System.out.println("You win! Secret: " + secret);
                break;
            }
            else if (ttry > secret) {
                System.out.println("Lower!");
            }
            else if (ttry < secret) {
                System.out.println("Higher!");
            }

            System.out.println("Pretende continuar? Prima (S)im.");
            String opt = sc.next();
            if (!(opt.equals("S") | opt.equals("Sim"))) {
                break;
            }
        }
        sc.close();
    }
}
