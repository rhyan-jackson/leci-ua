package ex1;
import java.util.AbstractSet;
import java.util.TreeSet;

public class ALDemo {
    public static void main(String[] args) {
        // ArrayList<Integer> c1 = new ArrayList<>();

        // for (int i = 10; i <= 100; i+=10) {
        //     c1.add(i);
            
        // }
        // System.out.println("Size: " + c1.size());

        // for (int i = 0; i < c1.size(); i++) {
        //     System.out.println("Elemento: " + c1.get(i));

        // }

        // ArrayList<String> c2 = new ArrayList<>();

        // c2.add("Vento");
        // c2.add("Calor");
        // c2.add("Frio");
        // c2.add("Chuva");

        // System.out.println(c2);

        // Collections.sort(c2);
        // System.out.println(c2);

        // c2.remove("Frio");
        // c2.remove(0);
        // System.out.println(c2);

        // System.out.println("---------");

        // AbstractSet<Person> c3 = new HashSet<Person>();
        // c3.add(new Person("Rhyan Matos"));
        // c3.add(new Person("Rhyan Jackson"));
        // c3.add(new Person("Rhyan Marinho"));
        // c3.add(new Person("Rhyan Marinho"));

        // for (Person person : c3) {
        //     System.out.println(person);
        // }


        AbstractSet<Date> c4 = new TreeSet<Date>();
        
        c4.add(new Date(01, 11, 2005));
        c4.add(new Date(01, 12, 2012));
        c4.add(new Date(01, 9, 2003));
        c4.add(new Date(01, 2, 2024));
        c4.add(new Date(01, 10, 2003));

    }
}