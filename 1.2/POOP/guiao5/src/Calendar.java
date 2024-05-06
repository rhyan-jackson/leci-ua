import java.util.ArrayList;
import java.util.Scanner;

public class Calendar {
    private int year;
    private int yearStartWeekDay;
    ArrayList<Event> eventsList = new ArrayList<Event>();

    public Calendar(int year, int yearStartWeekDay) {
        this.year = year;
        this.yearStartWeekDay = yearStartWeekDay;
    }

    public int getYear() {
        return year;
    }

    public int firstWeekdayOfYear() {
        return yearStartWeekDay;
    }

    public int firstWeekdayOfMonth(int month) {
        int sumToMonth = 0;
        for (int i = 1; i < month; i++) {
            sumToMonth += DateYMD.monthDays(i, year);
        }

        int weekDay = (yearStartWeekDay + (sumToMonth % 7)) % 7;

        if (weekDay == 0) {
            return 7;
        }

        return weekDay;

    }

    public boolean addEvent(DateYMD dateObj, String eventLabel) {
        if (dateObj.getYear() != year) {throw new IllegalArgumentException("The year of the DateYMD object must be the same of Calendar.");}
        eventsList.add(new Event(dateObj, eventLabel));
        return true;
    }

    public boolean removeEvent() {
        System.out.println("    Input an ID to remove");
        Scanner sc = new Scanner(System.in);

        for(int i = 0; i < eventsList.size(); i++) {
            String date = eventsList.get(i).getEventArray()[0].toString();
            String eventLabel = eventsList.get(i).getEventArray()[1].toString();
            System.out.printf("%02d > %s | %s%n", i, date, eventLabel );
        }
        System.out.print("Input > ");
        int removeId = sc.nextInt();
        sc.close();
        if (removeId >= 0 && removeId < eventsList.size()) {
            eventsList.remove(removeId);
            return true;
        } else {
            return false;
        }
    }

    public ArrayList<Integer> getEventDays(int month) {
        ArrayList<Integer> daysList = new ArrayList<Integer>();

        for (Event event : eventsList) {
            DateYMD eventDate = (DateYMD) event.getEventArray()[0];
            int eventMonth = eventDate.getMonth();

            if (eventMonth == month) {
                daysList.add(eventDate.getDay());
            }
        }
        return daysList;
    }

    private static String centerText(String text, int maxChar) {
        if (maxChar - text.length() <= 0) {
            return text;
        } 
        double paddingNum = ((double)maxChar - (double)text.length()) / 2;
        String padding1 = " ".repeat((int)Math.floor(paddingNum));
        String padding2 = " ".repeat((int)Math.ceil(paddingNum));

        return String.format("%s%s%s", padding1, text, padding2);
    }
    
    public String toString(int month) {
        String[] monthArray = {"January", "February", "March", "April", "May", "June",
                       "July", "August", "September", "October", "November", "December"};

        int maxMonthDays = DateYMD.monthDays(month, year);

        ArrayList<Integer> eventsDayList = getEventDays(month);

        String monthString = monthArray[month - 1];

        String calendar = "";
        
         // Calendar header print
        calendar += centerText(monthString + " " + year, 31) + "\n";
        calendar += "  Su  Mo  Tu  We  Th  Fr  Sa\n";
 
        // Days print
        int day = 1;
        int column = 8 - (firstWeekdayOfMonth(month));
        calendar += "    ".repeat(firstWeekdayOfMonth(month) - 1);
        while (day <= maxMonthDays) {
                if (eventsDayList.contains(day)) {
                    if (day < 10) {
                        calendar += String.format("  *%1s", day);
                    } else {
                        calendar += String.format(" *%2s", day);
                    }
                } else {
                    calendar += String.format("  %2s", day);

                }
                day++;
                column--;
            if (column <= 0) {
                calendar += "\n";
                column = 7;
            }
        }
        calendar += "\n\n";
        return calendar;
    }

    public String toString() {
        String complete_calendar = "";
        for (int i = 1; i <= 12; i++) {
            complete_calendar += toString(i);
        }
        return complete_calendar;
    }


}