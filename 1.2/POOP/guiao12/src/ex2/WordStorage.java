package ex2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.TreeMap;
import java.util.Scanner;

public class WordStorage {
    private TreeMap<Character, TreeMap<String, Integer>> loadedWordsMap = new TreeMap<>(); 

    public void load(String filename) throws FileNotFoundException {
        File file = new File("src/ex1/" + filename);
        Scanner sc = new Scanner(file);

        sc.useDelimiter("[ \\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\\\"\\\']+");

        while (sc.hasNext()) {
            String word = sc.next().toLowerCase();
            if (word.length() > 3) {
                char primaryKey = word.charAt(0);
                
                if (isCharKeyAlreadyMapped(word)) {
                    TreeMap<String, Integer> respectiveCharacterMap = loadedWordsMap.get(primaryKey);
                    if (isWordAlreadyMapped(word)) {
                        int wordCount = respectiveCharacterMap.get(word);
                        respectiveCharacterMap.replace(word, wordCount + 1);
                    } else {
                        respectiveCharacterMap.put(word, 1);
                    }
                } else {
                    TreeMap<String, Integer> respectiveCharacterMap = new TreeMap<>();
                    respectiveCharacterMap.put(word, 1);
                    loadedWordsMap.put(primaryKey, respectiveCharacterMap);
                }
            }
        }

        sc.close();
    }

    public boolean isCharKeyAlreadyMapped(String word) {
        char primaryKey = word.charAt(0);
        return loadedWordsMap.containsKey(primaryKey);
    }

    public boolean isWordAlreadyMapped(String word) {
        char primaryKey = word.charAt(0);
        if (loadedWordsMap.containsKey(primaryKey)) {
            TreeMap<String, Integer> respectiveCharacterMap = loadedWordsMap.get(primaryKey);
            return respectiveCharacterMap.containsKey(word);
        }
        return false;
    }

    public TreeMap<Character, TreeMap<String, Integer>> getLoadedWordsMap() {
        return loadedWordsMap;
    } 

    public static void main(String[] args) throws FileNotFoundException {
        WordStorage ws = new WordStorage();
        ws.load("test.txt");
        System.out.println(ws.getLoadedWordsMap());
    }
}
