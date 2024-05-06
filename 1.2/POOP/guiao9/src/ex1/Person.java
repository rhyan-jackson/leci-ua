package ex1;
public class Person {
    protected String name;
    private int citizenID = 0;
    private Date birthDate = null;

    public Person(String name, int citizenID, Date birthDate) {
        
        if (!isValidCitizenID(citizenID)) {
            throw new IllegalArgumentException("Citizen ID must be valid.");
        }

        if (!isValidName(name)) {
            throw new IllegalArgumentException("Name must be valid.");
        }

        this.name = name;
        this.citizenID = citizenID;
        this.birthDate = birthDate;

    }

    public Person(String name) {

        if (!isValidName(name)) {
            throw new IllegalArgumentException("Name must be valid.");
        }

        this.name = name;

    }

    public boolean equals(Person personToCompareWith) {
        boolean isNameEqual = this.getName().equals(personToCompareWith.getName());
        boolean citizenIdsAreValid = isValidCitizenID(this.getCitizenID()) && isValidCitizenID(personToCompareWith.getCitizenID());
        boolean birthDatesAreValid = (this.getBirthDate() != null) && (personToCompareWith.getBirthDate() != null);

        if (citizenIdsAreValid) {
            boolean isCitizendIdEqual = this.getCitizenID() == personToCompareWith.getCitizenID();
            return isCitizendIdEqual;
        }

        if (birthDatesAreValid) {
            boolean isBirthDateEqual = this.getBirthDate().equals(personToCompareWith.getBirthDate());
            return isBirthDateEqual && isNameEqual;
        }

        return isNameEqual;

    }

    // Getters
    public String getName() {
        return name;
    }
    
    public Date getBirthDate() {
        return birthDate;
    }

    public int getCitizenID() {
        return citizenID;
    }

    // Setters
    public void setName(String newName) {
        this.name = newName;
    }

    private static Boolean isValidCitizenID(int citizenID) {
        if (!Regex.matchesRegex("^\\d{7}$", Integer.toString(citizenID))) {
            return false;
        }
        return true;
    }

    private static Boolean isValidName(String name) {
        if (!Regex.matchesRegex("^([a-zA-Z]{3,} )*[a-zA-Z]{3,}$", name)) {
            return false;
        }
        return true;
    }

}