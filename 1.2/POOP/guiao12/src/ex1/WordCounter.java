package ex1;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.stream.Stream;

public class WordCounter {
    private ArrayList<String> loadedWordsArray = new ArrayList<>(); 

    public void load(String filename) throws FileNotFoundException {
        File file = new File("src/ex1/" + filename);
        Scanner sc = new Scanner(file);

        sc.useDelimiter("[ \\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\\\"\\\']+");

        while (sc.hasNext()) {
            String word = sc.next();
            loadedWordsArray.add(word.toLowerCase());
        }

        sc.close();
    }

    public long getDistinctWordCount() {
        Stream<String> distinctWordStream = loadedWordsArray.stream().distinct();

        return distinctWordStream.count();
    }

    public long getWordCount() {

        return loadedWordsArray.size();
    }
}
