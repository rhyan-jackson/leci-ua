public class Concert extends Event {
    String artistName;

    public Concert(String eventName, String artistName, int eventDuration) {
        super(eventName, eventDuration);

        this.artistName = artistName;

    }

    @Override
    public String toString() {
        return super.toString() + ", concert by " + artistName;
    }
}
