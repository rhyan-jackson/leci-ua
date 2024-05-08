public class MainTest {
    public static void main(String[] args) {
        GenderMap genderMap = new GenderMap();
        Book b1 = new Book("Clean Code", "Martin", 2023);

        genderMap.add("Programming", b1);
        genderMap.add("Aaavv", b1);
        genderMap.add("Aabba", b1);
        genderMap.add("Aassa", b1);
        genderMap.add("Aaaaqa", b1);
        genderMap.add("Aaaefa", b1);

        // genderMap.remove("Programming", b1);

        System.out.println(genderMap);

        
    }
}
