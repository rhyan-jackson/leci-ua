public class Ticket {
    EventOccurrence event;
    int ticketQuantity;

    public Ticket(EventOccurrence event, int ticketQuantity) {
        this.event = event;
        this.ticketQuantity = ticketQuantity;
    }

    public EventOccurrence getEventOccurrence() {
        return event;
    }

    public int getTicketQuantity() {
        return ticketQuantity;
    }
}
