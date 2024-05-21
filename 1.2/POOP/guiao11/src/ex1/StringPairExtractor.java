package ex1;
import java.util.TreeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.LinkedHashMap;
import java.util.Scanner;

public class StringPairExtractor {

    public static TreeMap<String, LinkedHashMap<String, Integer>> extract(String filename) throws FileNotFoundException {
        TreeMap<String, LinkedHashMap<String, Integer>> generalWordsMap = new TreeMap<>();
        File respectiveFile = new File(filename);
        Scanner fileScanner = new Scanner(respectiveFile, "UTF-8");

        fileScanner.useDelimiter("[ \\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\\\"\\\']+");

        String lastWord = null;
        while (fileScanner.hasNext()) {
            String actualWord = fileScanner.next().toLowerCase();

            if (actualWord.length() >= 3) {
                if (lastWord != null) {
                    if (generalWordsMap.containsKey(lastWord)) {
                        LinkedHashMap<String, Integer> actualWordsMap = generalWordsMap.get(lastWord);
    
                        if (actualWordsMap.containsKey(actualWord)) {
                            int actualWordQuantity = actualWordsMap.get(actualWord);
                            actualWordsMap.put(actualWord, ++actualWordQuantity);
                        } else {
                            actualWordsMap.put(actualWord, 1);
                        }
    
                    } else {
                        LinkedHashMap<String, Integer> actualWordsMap = new LinkedHashMap<>();
                        actualWordsMap.put(actualWord, 1);
                        generalWordsMap.put(lastWord,actualWordsMap);
                    }
                } 
                lastWord = actualWord;
            }
        }

        fileScanner.close();
        return generalWordsMap;

    }

    public static void main(String[] args) throws Exception {
        System.out.println(StringPairExtractor.extract("src/teste.txt"));
    }

    // rhyan de de joao
}