public class Place {
    String placeName;
    int capacity;

    public Place(String placeName, int capacity) {
        this.placeName = placeName;
        this.capacity = capacity;
    }

    public int getCapacity() {
        return capacity;
    }
    @Override
    public String toString() {
        return placeName;
    }
}
