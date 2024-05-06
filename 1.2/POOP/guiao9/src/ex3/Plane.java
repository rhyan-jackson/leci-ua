package ex3;

public class Plane implements PlaneType{
    private static int planeCount = 0; 
    private String id;
    private String fabricator;
    private String model;
    private int productionYear;
    private int maxPassengers;
    private int maxSpeed;

    public Plane(String fabricator, String model, int productionYear, int maxPassengers, int maxSpeed) {
        this.fabricator = fabricator;
        this.model = model;
        this.productionYear = productionYear;
        this.maxPassengers = maxPassengers;
        this.maxSpeed = maxSpeed;
        this.id = getPlaneType() + ++planeCount;

    }

    public Plane() {

    }

    @Override
    public String toString() {
        String s = String.format("[ID] %s | [Type] %s | [Fabricator] %s | [Model] %s | [Prod. Year] %d | [Max. Passengers] %d | [Max. Speed] %d",
            id, getPlaneType(), fabricator, model, productionYear, maxPassengers, maxSpeed);
        return s;
    }

    public String getFabricator() {
        return fabricator;
    }

    public void setFabricator(String fabricator) {
        this.fabricator = fabricator;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getProductionYear() {
        return productionYear;
    }

    public void setProductionYear(int productionYear) {
        this.productionYear = productionYear;
    }

    public int getMaxPassengers() {
        return maxPassengers;
    }

    public void setMaxPassengers(int maxPassengers) {
        this.maxPassengers = maxPassengers;
    }

    public int getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(int maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    public String getPlaneType() {
        return PlaneTypesEnum.DEFAULT.toString();
    }

    public String getId() {
        return id;
    }

    


}


