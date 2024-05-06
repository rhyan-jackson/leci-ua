package aula02;
import java.util.Scanner;

public class ex29 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        do{
            n = sc.nextInt();
        } while (n <= 0);

        while (n >= 0) {
            if (n % 10 == 0){
                System.out.print(n + "\n");
            } else {
                System.out.print(n + ", ");
            }
            
            n--;
        }



        sc.close();
    }
}
