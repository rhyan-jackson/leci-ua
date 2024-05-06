public class Contact {
    private static int contactsCount = 0;
    private String contactId;
    private Person personObj;
    private String telephoneNumber;
    private String contactEmail;

    public Contact(Person personObj, String telephoneNumber, String contactEmail) {
        telephoneNumber = Regex.turnNullIfEmptyString(telephoneNumber);
        contactEmail = Regex.turnNullIfEmptyString(contactEmail);

        if (telephoneNumber == null && contactEmail == null) {
            throw new IllegalArgumentException("At least one of email and telephone number must be an valid input.");
        }

        if (!isValidTelephoneNumber(telephoneNumber) && telephoneNumber != null) {
            throw new IllegalArgumentException("Insert an valid telephone number. Model: +351 XXX XXX XXX");
        }

        if (!isValidEmail(contactEmail) && contactEmail != null) {
            throw new IllegalArgumentException("Insert an valid email. Model: example@domain.com");
        }

        contactsCount++;
        contactId = "1" + Integer.toString(contactsCount);

        this.personObj = personObj;
        this.telephoneNumber = telephoneNumber;
        this.contactEmail = contactEmail;
    }

    // Getters
    public Person getPersonAssociated() {
        return personObj;
    }

    public String getId() {
        return contactId;
    }

    public String getEmail() {
        return contactEmail;
    }

    public String getTelephoneNumber() {
        return telephoneNumber;
    }

    // Setters
    public void setPersonName(String newName) {
        this.personObj.setName(newName);
    }

    public void setUserEmail(String newEmail) {
        this.contactEmail = newEmail;
    }

    public void setUserTelephoneNumber(String newTelephoneNumber) {
        this.telephoneNumber = newTelephoneNumber;
    }

    private static Boolean isValidTelephoneNumber(String telephoneNumber) {
        if (!Regex.matchesRegex("^(\\+?\\d{1,3} ?)?(9\\d{2} ?)(\\d{3} ?)\\d{3}$", telephoneNumber)) {
            return false;
        }
        return true;
    }

    private static Boolean isValidEmail(String contactEmail) {
        if (!Regex.matchesRegex("^\\S+@\\S+\\.\\S+$", contactEmail)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("%s %s %s %s", contactId, personObj.getName(), telephoneNumber, contactEmail);
    }
}
