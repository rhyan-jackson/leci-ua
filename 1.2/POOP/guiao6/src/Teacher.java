public class Teacher extends Person{
    private String category;
    private String department;

    public Teacher(String name, int citizenID, Date birthDate, String category, String department) {
        super(name, citizenID, birthDate);
        this.category = category;
        this.department = department;
    }

    public String getCategory() {
        return category;
    }

    public String getDepartment() {
        return department;
    }

    @Override
    public String toString() {
        return name;
    }
}
