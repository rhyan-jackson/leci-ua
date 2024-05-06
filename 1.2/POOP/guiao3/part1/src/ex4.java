import java.util.Scanner;
import java.util.Random;
import java.util.Arrays;

public class ex4 {

    public static Double[][] createArrayOfGrades(int quant) {
        Random rand = new Random();
        Double[][] gradesArray = new Double[quant][2];

        for (int i = 0; i < quant; i++) {
            double notaP = 0;
            double notaT = 0;

            notaP = rand.nextDouble() * 20;
            notaT = rand.nextDouble() * 20;
            
            gradesArray[i][0] = notaT;
            gradesArray[i][1] = notaP;
        }

        return gradesArray;
    };

    public static void printResult(Double[][] gradesArray) {
        double notaT, notaP = 0;
        System.out.println("NotaT   NotaP   Pauta");

        for (int i = 0; i < gradesArray.length; i++) {

            notaT = gradesArray[i][0];
            notaP = gradesArray[i][1];

            double pauta = 0.4 * notaT + 0.6 * notaP;
            System.out.printf("%5.2f    %5.2f   %5.2f%n", notaT, notaP, pauta);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Input
        System.out.print("Insira a quantidade de alunos a registrar > ");
        int quant = sc.nextInt();

        Double[][] gradesArray = createArrayOfGrades(quant);

        // Printing result
        System.out.println(Arrays.deepToString(gradesArray) + "%n");

        printResult(gradesArray);
        
        sc.close();
    }
}
