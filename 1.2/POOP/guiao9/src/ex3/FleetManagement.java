package ex3;

import java.util.Set;

public interface FleetManagement {
    public void add(Plane p);
    public void remove(Plane p);
    public Plane searchPlaneBy(String id);
    public Set<Plane> getCommercial();
    public Set<Plane> getMilitary();
    public void printAll();
    public Plane getFastest();
}
