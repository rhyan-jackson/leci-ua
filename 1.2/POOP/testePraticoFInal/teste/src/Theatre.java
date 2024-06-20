public class Theatre extends Event {
    String authorName;
    String theatreCompanyName;

    public Theatre(String eventName, String authorName, String theatreCompanyName, int eventDuration) {
        super(eventName, eventDuration);

        this.authorName = authorName;
        this.theatreCompanyName = theatreCompanyName;

    }

    @Override
    public String toString() {
        return super.toString() + ", theatre play by " + authorName + ", performed by " + theatreCompanyName;
    }
}
