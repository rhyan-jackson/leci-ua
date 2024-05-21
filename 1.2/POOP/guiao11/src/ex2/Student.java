package ex2;
import java.util.List;

public class Student implements Comparable<Student>{

    private String name;
    private List<Double> grades;

    public Student(String name, List<Double> grades) {
        this.name = name;
        this.grades = grades;
    }

    public String getName() {
        return name;
    }

    public List<Double> getGrades() {
        return grades;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGrades(List<Double> grades) {
        this.grades = grades;
    }
    
    @Override
    public int compareTo(Student o) {
        return name.compareTo(o.getName());
    }

    @Override
    public String toString() {
        return this.name + grades.toString(); 
    }
}
