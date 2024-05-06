package ex3;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.Iterator;

public class Fleet implements FleetManagement{
    private HashSet<Plane> planeSet = new HashSet<>();

    Fleet() {

    }

    public void add(Plane p) {
        planeSet.add(p);
    }

    public void remove(Plane p) {
        planeSet.remove(p);
    }

    public void removeBy(String id) {
        Plane planeToRemove = searchPlaneBy(id);
        planeSet.remove(planeToRemove);
    }

    public Plane searchPlaneBy(String id) {
        for (Plane plane : planeSet) {
            if (plane.getId().equalsIgnoreCase(id)) {
                return plane;
            }
        }
        return null;
    }

    public Set<Plane> getCommercial() {
        Set<Plane> commercialPlaneSet = planeSet
        .stream()
        .filter(p -> p.getPlaneType().equals("Commercial"))
        .collect(Collectors.toSet());

        return commercialPlaneSet;
    }

    public Set<Plane> getMilitary() {
        Set<Plane> militaryPlaneSet = planeSet
        .stream()
        .filter(p -> p.getPlaneType().equals("Military"))
        .collect(Collectors.toSet());

        return militaryPlaneSet;
    }

    public Plane getFastest() {
        Iterator<Plane> planesIterator = planeSet.iterator();
        Plane fastestPlane;

        if (planesIterator.hasNext()) {
            fastestPlane = planesIterator.next();
        } else {
            return null;
        }
        
        while (planesIterator.hasNext()) {
            Plane selectedPlane = planesIterator.next();
            int highestMaxSpeed = fastestPlane.getMaxSpeed();
            if (highestMaxSpeed < selectedPlane.getMaxSpeed()) {
                fastestPlane = selectedPlane;
            }
        }

        return fastestPlane;

    }

    public void printAll() {
        for (Plane p : planeSet) {
            System.out.println(p);
        }
    }
    
}
