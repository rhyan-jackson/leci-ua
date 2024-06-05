package ex3;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.TreeSet;
import java.util.stream.Collectors;

public class MoviesOrganizer {
    TreeSet<Movie> moviesSet = new TreeSet<Movie>();

    public void load(String filePath) throws FileNotFoundException {
        moviesSet.clear();

        File f = new File(filePath);
        Scanner fileScanner = new Scanner(f);

        fileScanner.nextLine();

        while (fileScanner.hasNextLine()) {
            String line = fileScanner.nextLine();
            String[] movieDataArray = line.split("\t+");

            Movie movieObj = new Movie(movieDataArray[0],
                                       Double.parseDouble(movieDataArray[1]),
                                       movieDataArray[2],
                                       movieDataArray[3],
                                       Integer.parseInt(movieDataArray[4]));
            
            moviesSet.add(movieObj);
        }

        fileScanner.close();
    }

    public void printMoviesSet() {
        for (Movie mv : moviesSet) {
            System.out.println(mv);
        }
    }

    public TreeSet<Movie> getSetOrganizedByDescendingScore() {
        return moviesSet.stream().collect(Collectors.toCollection(() -> new TreeSet<>((a, b) -> (Double.compare(b.getScore(), a.getScore())))));
    }

    public TreeSet<Movie> getSetOrganizedByAscendingRunningTime() {
        return moviesSet.stream().collect(Collectors.toCollection(() -> new TreeSet<>((a, b) -> (a.getRunningTime() - b.getRunningTime()))));
    }

    public TreeSet<Movie> filterSetByGenre(String genre) {
        return moviesSet.stream().filter(m -> m.getGenre().equals(genre)).collect(Collectors.toCollection(TreeSet::new));
    }

    public void exportToFileHigher60AndSelectedGenre(String filename, String genre) throws IOException{
        File file = new File(filename);

        if (file.createNewFile()) {
            System.out.println("File created: " + file.getName());
        } else {
            System.out.println("File already exists.");
        }

        FileWriter writer = new FileWriter(file, false);

        TreeSet<Movie> filteredSet = filterHigher60AndSelectedGenre(genre);

        for (Movie mv : filteredSet) {
            String stringToWrite = String.format("%s\t%s\t%s\t%s\t%s\n", mv.getName(), mv.getScore(), mv.getRating(), mv.getGenre(), mv.getRunningTime());
            writer.append(stringToWrite);
        }

        writer.close();


    }

    private TreeSet<Movie> filterHigher60AndSelectedGenre(String genre) {
        TreeSet<Movie> setFilteredByGenre = filterSetByGenre(genre);
        TreeSet<Movie> setFilteredByGenreAndHigher60 = setFilteredByGenre.stream().filter(m -> m.getScore() > 60).collect(Collectors.toCollection(TreeSet::new));

        return setFilteredByGenreAndHigher60;
    }
    


    public static void main(String[] args) throws FileNotFoundException, IOException{
        MoviesOrganizer mo = new MoviesOrganizer();
        mo.load("src/ex3/movies.txt");
        mo.exportToFileHigher60AndSelectedGenre("teste.txt", "action");
    }
}
