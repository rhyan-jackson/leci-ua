public class Student extends Person {
    private int mecNumber;
    private Date registrationDate;
    private static int lastMecNumber = 100;

    public Student(String name, int citizenID, Date birthDate, Date registrationDate) {
        super(name, citizenID, birthDate);
        
        this.registrationDate = registrationDate;
        lastMecNumber++;
        this.mecNumber = lastMecNumber;

    }

    public Student(String name, int citizenID, Date birthDate) {
        super(name, citizenID, birthDate);

        this.registrationDate = Date.getActualDate();
        lastMecNumber++;
        this.mecNumber = lastMecNumber;

    }

    public int getMecNumber() {
        return mecNumber;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    @Override
    public String toString() {
        return String.format("Student: %s, NMec: %d.", getName(), getMecNumber());
    }
}
