public class TestCalendar {
    public static void main(String[] args) {
        Calendar cal = new Calendar(2024, 2); // 2 -> segunda-feira
        DateYMD dateEvent1 = new DateYMD(01, 10, 2024);

        cal.addEvent(dateEvent1, "My birthday");

        System.out.println(cal.toString());
    }
}
