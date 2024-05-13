package ex10_4;

import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;
import ex10_3.LetterExtractor;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new FileReader("src/ex10_4/words.txt"));
        LetterExtractor letterExtractor = new LetterExtractor();
        while (input.hasNext()) {
            String word = input.next();
            letterExtractor.extract(word);
        }
        input.close();

        System.out.println(letterExtractor);
    }
}
