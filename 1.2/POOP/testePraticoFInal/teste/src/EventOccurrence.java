public class EventOccurrence {
    Event event;
    Place place;
    String dateTime;
    int ticketsAvailableQuantity;

    public EventOccurrence(Event event, Place place, String dateTime) {
        this.event = event;
        this.place = place;
        this.dateTime = dateTime;

        this.ticketsAvailableQuantity = place.getCapacity();

    }

    public Place getPlace() {
        return place;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void withdrawTickets(int quantity) {
        if (ticketsAvailableQuantity - quantity >= 0) {
            ticketsAvailableQuantity -= quantity;
        } else {
            ticketsAvailableQuantity = 0;
        }
        
    }

    public void addTickets(int quantity) {
        ticketsAvailableQuantity += quantity;
    }

    public int getTicketsAvailableQuantity() {
        return ticketsAvailableQuantity;
    }

    @Override
    public String toString() {
        return event.toString() + " at " + place + ", " + dateTime + ", " + getTicketsAvailableQuantity() + " tickets available.";
    }
}
