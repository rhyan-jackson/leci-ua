import java.util.Scanner;

public class ex5 {

    public static String centerText(String text, int maxChar) {
        if (maxChar - text.length() <= 0) {
            return text;
        } 
        String formattedString = "";
        double paddingNum = ((double)maxChar - (double)text.length()) / 2;
        String padding1 = " ".repeat((int)Math.floor(paddingNum));
        String padding2 = " ".repeat((int)Math.ceil(paddingNum));
        formattedString = String.format("%s%s%s", padding1, text, padding2);

        return formattedString;
    }

    public static void printCalendar(String date, int firstMonthDay) {

        // List of months organization.
        String[] monthArray = {"January", "February", "March", "April", "May", "June",
                       "July", "August", "September", "October", "November", "December"};
        int[] monthDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        
        // Trating Input.
        String[] dateSplitted = date.split("/");

        // Variables extraction and initialization
        int monthNum = Integer.parseInt(dateSplitted[0]);
        int year = Integer.parseInt(dateSplitted[1]);
        String month = monthArray[monthNum - 1];
        int maxMonthDays;

        // Treating Leap Year case
        if ((year % 4 == 0) && (year % 100 != 0 || year % 400 == 0) && (monthNum == 2)) {
            maxMonthDays = monthDays[monthNum - 1] + 1;
        }
        else {
            maxMonthDays = monthDays[monthNum - 1];
        }

        if (firstMonthDay > 7) {
            firstMonthDay = firstMonthDay % 7;
        }

        // Calendar header print
        System.out.println(centerText(month + " " + year, 20));
        System.out.println("Su Mo Tu We Th Fr Sa");

        // Days print
        int day = 1;
        int column = 8 - (firstMonthDay);
        System.out.print("   ".repeat(firstMonthDay - 1));
        while (day <= maxMonthDays) {
                System.out.printf("%2s ", day);
                day++;
                column--;
            if (column <= 0) {
                System.out.printf("%n");
                column = 7;
            }
        }
        
    }
    public static void main(String[] args) {
        // Scanner sc = new Scanner(System.in);
        // sc.close();

        printCalendar("10/2023", 2);
        
    }
}