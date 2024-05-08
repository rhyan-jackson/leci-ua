import java.util.TreeMap;
import java.util.HashSet;
import java.util.Map;

public class GenderMap {
    private TreeMap<String, HashSet<Book>> genderMap = new TreeMap<>();
    
    public GenderMap(){}

    public void add(String gender, Book b) {
        if (genderMap.containsKey(gender)) {
            HashSet<Book> existentBookSet = genderMap.get(gender);
            existentBookSet.add(b);
        } else {
            HashSet<Book> createdBookSet = new HashSet<>();
            createdBookSet.add(b);
            genderMap.put(gender, createdBookSet);
        }
    }

    public void remove(String gender, Book b) {
        if (genderMap.containsKey(gender)) {
            HashSet<Book> existentBookSet = genderMap.get(gender);
            existentBookSet.remove(b);
        }
    }

    @Override
    public String toString() {
        String finalString = "";
        for (Map.Entry<String, HashSet<Book>> pairGenderAndBookSet : genderMap.entrySet()) {
            HashSet<Book> bookSet = pairGenderAndBookSet.getValue();
            for (Book b : bookSet) {
                finalString += pairGenderAndBookSet.getKey() + " : " + b.toString() + "\n";
            }
        }
        return finalString;
    }
}
