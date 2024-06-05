package ex3;

public class Movie implements Comparable<Movie>{
    String name;
    double score;
    String rating;
    String genre;
    int runningTime;

    public Movie(String name, double score, String rating, String genre, int runningTime) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningTime = runningTime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getRunningTime() {
        return runningTime;
    }

    public void setRunningTime(int runningTime) {
        this.runningTime = runningTime;
    }

    @Override
    public String toString() {
        return String.format("%s | %s | %s | %s | %s", name,
                                                      score,
                                                      rating,
                                                      genre,
                                                      runningTime);
    }

    @Override
    public int compareTo(Movie o) {
        return this.getName().compareTo(o.getName());
    }

    
}
