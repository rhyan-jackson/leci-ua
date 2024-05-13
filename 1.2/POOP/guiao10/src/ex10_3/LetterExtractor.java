package ex10_3;

import java.util.TreeMap;
import java.util.TreeSet;

public class LetterExtractor {
    private static TreeMap<Character, TreeSet<Integer>> lettersMap = new TreeMap<>();

    public TreeMap<Character, TreeSet<Integer>> extract(String s) {
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);

            if (lettersMap.containsKey(c)) {
                TreeSet<Integer> respectiveCharPosSet = lettersMap.get(c);
                respectiveCharPosSet.add(i);
            } else {
                TreeSet<Integer> createdCharPosSet = new TreeSet<>();
                createdCharPosSet.add(i);

                lettersMap.put(c, createdCharPosSet);
            }
        }

        return lettersMap;
    }

    @Override
    public String toString() {
        return lettersMap.toString();
    }

}
