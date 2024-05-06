public class Test {
    public static void main(String[] args) {
        Student al = new Student (
            "Andreia Melo",
            9855678,
            new Date(18, 7, 1990),
            new Date(1, 9, 2018)
        );

        Teacher p1 = new Teacher(
            "Jorge Almeida",
            3467225,
            new Date(13, 3, 1967),
            "Associado",
            "Informática"
        );

        ScholarshipHolder bls = new ScholarshipHolder(
            "Igor Santos",
            8976543,
            new Date(11, 5, 1985),
            p1,
            900
        );

        bls.setScholarShipAmount(1050);
        System.out.println("Student: " + al.getName());
        System.out.println(al);
        System.out.println("ScholarshipHolder: " + bls.getName() + ", NMec: "
        + bls.getMecNumber() + ", Bolsa: " + bls.getSchorlashipAmount() + ", Orientador: " +
        bls.getAdviser());
        System.out.println(bls);
    }
}