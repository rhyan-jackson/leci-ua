package ex3;

public class MainTest {
    public static void main(String[] args) {
        CommercialPlane p1 = new CommercialPlane(null, null, 0, 0, 200, 0);
        MilitaryPlane p2 = new MilitaryPlane(null, null, 0, 0, 100, 0);
        CommercialPlane p3 = new CommercialPlane(null, null, 0, 0, 300, 0);

        Fleet fleet = new Fleet();

        fleet.add(p1);
        fleet.add(p2);
        fleet.add(p3);

        // fleet.printAll();
        // System.out.println("----------------");

        // System.out.println(fleet.getFastest());

        // System.out.println(fleet.getCommercial());
        // System.out.println("----------------");
        // System.out.println(fleet.getMilitary());

        fleet.remove(p1);

        fleet.printAll();
    }
}
