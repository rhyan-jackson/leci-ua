package ex1;
import java.time.LocalDate;

public class Date {

    private int day;
    private int month;
    private int year;

    public Date(int day, int month, int year) {
        if (!isValidDate(day, month, year)) {
            throw new IllegalArgumentException("The date inserted must be valid and real.");
        }

        this.day = day;
        this.month = month;
        this.year = year;
    }

    // consultar os valores do dia, mês e ano (day, month, year);
    public int getDay() {
        return day;
    }

    public int getMonth() {
        return month;
    }

    public int getYear() {
        return year;
    }

    public static Date getActualDate() {
        LocalDate actualDate = java.time.LocalDate.now();
        
        return new Date(actualDate.getDayOfMonth(), actualDate.getMonth().getValue(), actualDate.getYear());
    }

    public static boolean validMonth(int monthNumber) {
        if (monthNumber >= 1 && monthNumber <= 12) {return true;}
        else {return false;}
    }

    public static boolean isLeapYear(int year) {
        return (((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))));
    }

    public static int monthDays(int month, int year) {
        // String[] monthArray = {"January", "February", "March", "April", "May", "June",
        //                "July", "August", "September", "October", "November", "December"};
        int[] monthDaysArray = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        int monthDays = monthDaysArray[month - 1];

        if (isLeapYear(year) && (month == 2)) {
                monthDays += 1;
        }

        return monthDays;
    }

    public static boolean isValidDate(int day, int month, int year) {
        if (year < 0) {return false;}
        if (!(day >= 1) || !(day <= monthDays(month, year))) {return false;}
        if (!(validMonth(month))) {return false;}

        return true;
    }

// definir uma data: set(int day, int month, int year);
    public void set(int day, int month, int year) {
        if (!isValidDate(day, month, year)) {
            throw new IllegalArgumentException("The date inserted must be valid and real.");
        }

        this.day = day;
        this.month = month;
        this.year = year;

        System.out.println("Date registered: " + toString());

    }

// incrementar a data (increment);
    public void incrementDay() {
        int maxDays = monthDays(month, year);
        if (day + 1 > maxDays) { // next month
            if (month + ((double)day / (double)maxDays) > 12) { // next year
                year += 1;
                month = 1;
                day = 1;
            } else {
                month += 1;
            }
        } else {
            day += 1;
        }
    }

// decrementar a data (decrement);
    public void decrementDay() {
        if (day - 1 <= 0) { // previous month
            if (month - 1 <= 0) { // previous year
                year -= 1;
                month = 12;
                day = monthDays(month, year);
            } else {
                month -= 1;
            }
        } else {
            day -= 1;
        }
    }
    
    public boolean equals(Date dateToCompare) {
        int dayToCompare = dateToCompare.getDay(); 
        int monthToCompare = dateToCompare.getMonth(); 
        int yearToCompare = dateToCompare.getYear(); 

        return (day == dayToCompare) && (month == monthToCompare) && (year == yearToCompare);
    }

// método toString que devolva a data no formato AAAA-MM-DD.
    @Override
    public String toString() {
        return String.format("%04d-%02d-%02d",year, month, day);
    }
    
}