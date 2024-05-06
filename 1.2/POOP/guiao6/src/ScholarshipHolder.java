public class ScholarshipHolder extends Student{
    private Teacher adviser;
    private double schorlashipAmount;

    public ScholarshipHolder(String name, int citizenID, Date birthDate, Date registrationDate, Teacher adviser, double schorlashipAmount) {
        super(name, citizenID, birthDate, registrationDate);

        this.adviser = adviser;
        this.schorlashipAmount = schorlashipAmount;

    }

    public ScholarshipHolder(String name, int citizenID, Date birthDate, Teacher adviser, double schorlashipAmount) {
        super(name, citizenID, birthDate);

        this.adviser = adviser;
        this.schorlashipAmount = schorlashipAmount;

    }

    public Teacher getAdviser() {
        return adviser;
    }

    public double getSchorlashipAmount() {
        return schorlashipAmount;
    }

    public void setScholarShipAmount(double schorlashipAmount) {
        this.schorlashipAmount = schorlashipAmount;
    }

    @Override
    public String toString() {
        return name;
    }
}