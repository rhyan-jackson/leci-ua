public class DateTest {
    public static int weekDay(int day, int month, int year) {
        int weekDay = 0;
        int countYear = 0;
        while (countYear < year) {
            int yearDaysQuantity = 365;
            if (DateYMD.leapYear(countYear)) {yearDaysQuantity = 366;}
            weekDay = (weekDay + (yearDaysQuantity % 7)) % 7;
            countYear += 1;
            // System.out.printf("Year %d. We're in the %dº week day.%n", countYear, weekDay);

        }

        return weekDay;
    }

    public static void main(String[] args) {
        System.out.println(weekDay(0, 0, 2024)); // 2
        System.out.println(weekDay(0, 0, 2023)); // 1
        System.out.println(weekDay(0, 0, 2022)); // 0
        System.out.println(weekDay(0, 0, 5)); // 5
        System.out.println(weekDay(0, 0, 2)); // 1
        System.out.println(weekDay(0, 0, 1)); // 0
        System.out.println(weekDay(0, 0, 2002));
    }
}
