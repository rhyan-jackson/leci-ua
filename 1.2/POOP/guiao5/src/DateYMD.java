public class DateYMD {

    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year) {
        if (!validDate(day, month, year)) {
            throw new IllegalArgumentException("The date inserted must be valid and real.");
        }

        this.day = day;
        this.month = month;
        this.year = year;
    }

    public DateYMD(){

    }

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

// definir uma data: set(int day, int month, int year);
    public void set(int day, int month, int year) {
        if (!validDate(day, month, year)) {
            throw new IllegalArgumentException("The date inserted must be valid and real.");
        }
        this.day = day;
        this.month = month;
        this.year = year;

        System.out.println("Date registered: " + toString());

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

// método toString que devolva a data no formato AAAA-MM-DD.
    @Override
    public String toString() {
        return String.format("%04d-%02d-%02d",year, month, day);
    }
}