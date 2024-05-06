
package aula02;
import java.util.Scanner;

public class ex210 {
public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    // Input part.
    System.out.print("Insira um número (0 para sair) > ");
    double numInput = sc.nextDouble();

    // Defining the temporary variables.
    double biggest = numInput;
    double smallest = numInput;
    int count = 0;
    int sum = 0;

    while (numInput != 0) {
        if (numInput > biggest) {
            biggest = numInput;
        }
        if (numInput < smallest) {
            smallest = numInput;
        }

        count++;
        sum += numInput;

        System.out.print("Insira outro número (0 para sair) > ");
        numInput = sc.nextDouble();
    }

    double average = sum/count;
    System.out.println("Maior: " + biggest);
    System.out.println("Menor: " + smallest);
    System.out.println("Média: " + average);
    System.out.println("Contagem: " + count);


    sc.close();
}
}
