public class Event{
    public DateYMD dateObj;
    public String eventLabel;

    public Event(DateYMD dateObj, String eventLabel) {
        this.dateObj = dateObj;
        this.eventLabel = eventLabel;
    }

    public Object[] getEventArray() {
        Object[] eventArray = {dateObj, eventLabel};
        return eventArray;
    }
}