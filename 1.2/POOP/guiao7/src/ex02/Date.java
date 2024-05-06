package ex02;

public abstract class Date {
    public static boolean validMonth(int monthNumber) {
        if (monthNumber >= 1 && monthNumber <= 12) {return true;}
        else {return false;}
    }

    public static boolean leapYear(int year) {
        return (((year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))));
    }

    public static int monthDays(int month, int year) {
        // String[] monthArray = {"January", "February", "March", "April", "May", "June",
        //                "July", "August", "September", "October", "November", "December"};
        int[] monthDaysArray = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        int monthDays = monthDaysArray[month - 1];

        if (leapYear(year) && (month == 2)) {
                monthDays += 1;
        }

        return monthDays;
    }

    public static boolean validDate(int day, int month, int year) {
        if (year < 0) {return false;}
        if (!(day >= 1) || !(day <= monthDays(month, year))) {return false;}
        if (!(validMonth(month))) {return false;}

        return true;
    }

    public abstract void incrementDay();

    public abstract void decrementDay();
    
}
