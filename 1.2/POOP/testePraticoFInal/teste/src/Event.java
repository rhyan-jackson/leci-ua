abstract class Event {
    String eventName;
    int eventDuration;

    Event(String eventName, int eventDuration) {
        this.eventName = eventName;
        this.eventDuration = eventDuration;
    }

    @Override
    public String toString() {
        return String.format("%s [%d minutes]", eventName, eventDuration);
    }
}
