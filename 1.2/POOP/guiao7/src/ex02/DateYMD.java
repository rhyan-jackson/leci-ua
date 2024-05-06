package ex02;
public class DateYMD extends Date{

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