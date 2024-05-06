package ex3;

public class CommercialPlane extends Plane {
    private int crewQuantity;
    private final String PLANE_TYPE = "Commercial";

    public CommercialPlane(String fabricator, String model, int productionYear, int maxPassengers, int maxSpeed, int crewQuantity) {
        super(fabricator, model, productionYear, maxPassengers, maxSpeed);
        this.crewQuantity = crewQuantity;
    }


    public int getCrewQuantity() {
        return crewQuantity;
    }

    public String getPlaneType() {
        return PLANE_TYPE;
    }

    @Override
    public String toString() {
        return super.toString() + " | [Crew Quant.] " + crewQuantity;
    }
    
}
