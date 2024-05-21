package ex2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.TreeSet;

public class Gradebook {
    TreeSet<Student> studentSet = new TreeSet<>();

    public void load(String filename) throws FileNotFoundException {
        File fileOpened = new File("src/ex2/" + filename);
        Scanner scannerOfOpenedFile = new Scanner(fileOpened);

        while (scannerOfOpenedFile.hasNextLine()) {
            String selectedLine = scannerOfOpenedFile.nextLine();
            ArrayList<String> studentDataArray = new ArrayList<>(Arrays.asList(selectedLine.split("|")));
            
            String studentName = studentDataArray.get(0);

            List<String> studentGradesStringList = studentDataArray.subList(1, studentDataArray.size() - 1);
            ArrayList<Double> studentGradesList = parseStringListToDouble(studentGradesStringList);
            
            Student respectiveStudent = new Student(studentName, studentGradesList);

            studentSet.add(respectiveStudent);

        }

        scannerOfOpenedFile.close();
    }

    public ArrayList<Double> parseStringListToDouble(List<String> stringList) {
        ArrayList<Double> doubleList = new ArrayList<>();
        for (String s : stringList) {
            Double grade = Double.parseDouble(s);
            doubleList.add(grade);
        }
        return doubleList;
    }


    public void removeStudent(Student s) {

    }

    public void addStudent(Student s) {

    }

    public void getStudent(String name, List<Double> grades) {

    }

    public void calculateAverageGrade() {

    }

    public void printAllStudents() {

    }

    @Override
    public String toString() {
        String finalString = "";
        for (Student s : studentSet) {
            finalString += String.format("%s%n", s);
        }

        return finalString;
    }

    public static void main(String[] args) {
        Gradebook gb = 
    }

}
