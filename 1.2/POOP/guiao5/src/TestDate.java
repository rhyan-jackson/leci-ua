import java.util.Scanner;

public class TestDate {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        DateYMD dateObj = new DateYMD();
        int op = 10;
        while (op != 0) {
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");

            System.out.print("Input > ");
            op = sc.nextInt();

            switch (op) {
                case 0:
                    break;
                case 1:
                    System.out.print("Insert year > ");
                    int year = sc.nextInt(); 
                    System.out.print("Insert month > ");
                    int month = sc.nextInt(); 
                    System.out.print("Insert day > ");
                    int day = sc.nextInt();

                    dateObj.set(day, month, year);
                    break;
                case 2:
                    System.out.println(dateObj);
                    break;
                case 3:
                    dateObj.incrementDay();
                    break;
                case 4:
                    dateObj.decrementDay();
                    break;
                default:
                    System.out.println("Give an valid option.");
            }

        }

    }
}
