package ex3;

public class MilitaryPlane extends Plane {
    private int munnitionQuant;
    private final String PLANE_TYPE = "Military";

    public MilitaryPlane(String fabricator, String model, int productionYear, int maxPassengers, int maxSpeed, int munnitionQuant) {
        super(fabricator, model, productionYear, maxPassengers, maxSpeed);

        this.munnitionQuant = munnitionQuant;
    }  

    public int getMunnitionQuant() {
        return munnitionQuant;
    }

    @Override
    public String getPlaneType() {
        return PLANE_TYPE;
    }

    @Override
    public String toString() {
        return super.toString() + " | [Mun. Quant.] " + munnitionQuant;
    }
    
}
