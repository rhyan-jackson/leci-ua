public class Cinema extends Event {
    String directorName;
    int releaseYear;
    String[] actressNames;

    public Cinema(String eventName, String directorName, int releaseYear, String[] actressNames, int eventDuration) {
        super(eventName, eventDuration);

        this.directorName = directorName;
        this.releaseYear = releaseYear;
        this.actressNames = actressNames;

    }

    @Override
    public String toString() {
        return super.toString() + ", a " + releaseYear + " movie by " + directorName + ", with " + String.join(", ", actressNames);
    }
}
