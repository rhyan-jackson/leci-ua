import java.util.Collection;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.stream.Collectors;

public class TicketBookingSystem implements ITicketBookingSystem{
    final int INITIAL_ID_EVENTS = 1000;
    final int INITIAL_ID_TICKETS = 1;
    TreeMap<Integer, EventOccurrence> eventsMap = new TreeMap<>();
    TreeMap<Integer, Ticket> ticketsMap = new TreeMap<>();

    public boolean addEventOccurrence(Event event, Place place, String schedule) {
        EventOccurrence eo = new EventOccurrence(event, place, schedule);
        if (eventsMap.isEmpty()) {
            eventsMap.put(INITIAL_ID_EVENTS, eo);
        } else {
            if (!isAlreadyPlaceAndTimeRegistered(place, schedule)) {
                eventsMap.put(eventsMap.lastKey() + 1, eo);
                return true;
            }
        }

        return false;
    }

    public boolean isAlreadyPlaceAndTimeRegistered(Place place, String dateTime) {
        Collection<EventOccurrence> mapValues = eventsMap.values();
        for (EventOccurrence eo : mapValues) {
            if ((eo.getPlace() == place) && (eo.getDateTime() == dateTime)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int bookTickets(int eventId, int numTickets) {
        EventOccurrence respectiveEventOccurrence = getEventOcurrenceById(eventId);
        Ticket generatedTicket = new Ticket(respectiveEventOccurrence, numTickets);

        addTicket(generatedTicket);

        respectiveEventOccurrence.withdrawTickets(numTickets);

        return respectiveEventOccurrence.getTicketsAvailableQuantity() - numTickets;
    }

    private void addTicket(Ticket ticket) {
        if (ticketsMap.isEmpty()) {
            ticketsMap.put(1, ticket);
        } else {
            ticketsMap.put(ticketsMap.lastKey() + 1, ticket);
        }
    }

    public EventOccurrence getEventOcurrenceById(int id) {
        return eventsMap.get(id);
    }

    public Collection<EventOccurrence> getFirst10AvailableEventsSortedByDate() {
        TreeSet<EventOccurrence> availableEventOccurrence = eventsMap.values()
                                                                    .stream()
                                                                    .filter(e -> e.getTicketsAvailableQuantity() > 0)
                                                                    .collect(
                                                                        Collectors.toCollection(() -> new TreeSet<EventOccurrence>((e1, e2) -> e1.getDateTime().compareTo(e2.getDateTime()))));
        
        return availableEventOccurrence;
    };

    @Override
    public boolean cancelTickets(int ticketReference) {
        if (ticketsMap.containsKey(ticketReference)) {
            Ticket respectiveTicket = ticketsMap.get(ticketReference);
            EventOccurrence respectiveEvent = respectiveTicket.getEventOccurrence();
            respectiveEvent.addTickets(respectiveTicket.getTicketQuantity());

            ticketsMap.remove(ticketReference);
            return true;
        }

        return false;
    }

    @Override
    public Collection<EventOccurrence> getEventOccurrences() {
        return eventsMap.values();
    }
    
}
