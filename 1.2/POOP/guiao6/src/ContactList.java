import java.util.ArrayList;
import java.util.Scanner;

public class ContactList {
    static Scanner sc = new Scanner(System.in);
    private ArrayList<Contact> generalContactList = new ArrayList<Contact>();

    public static int getUserChoiceFromMenu() {
        // 1. Inserir contacto
        // 2. Alterar contacto
        // 3. Apagar contacto
        // 4. Procurar contacto
        // 5. Listar contactos
        // 0. Sair
        
        final int MAX_MENU_OPTION = 5;
        int userChoice;
        System.out.println("\nMenu");
        System.out.println("1. Register contact\n2. Edit contact\n3. Delete contact\n4. Search contact\n5. List contacts\n0. Leave");

        do {
            System.out.print("Sua escolha > ");
            userChoice = sc.nextInt();
            sc.nextLine(); // Burn the rest of line for scanner.
        } while (userChoice < 0 || userChoice > MAX_MENU_OPTION);

        return userChoice;
        
    }

    public static void printContactsFromArray(ArrayList<Contact> specificContactArray) {
        if (!specificContactArray.isEmpty()) {
            for (Contact contacts : specificContactArray) {
                System.out.printf("%nID: %s%nName: %s%nTel. num.: %s%nE-mail: %s%n",
                contacts.getId(),
                contacts.getPersonAssociated().getName(),
                contacts.getTelephoneNumber(),
                contacts.getEmail());
            }
        }
    }

    public void printContactsInGeneralList() {
        printContactsFromArray(generalContactList);
    }

    public Contact colectInfosAndRegisterContactPrompt() {
        System.out.println("Press Enter on input call if you want to leave e-mail or telephone number empty.");
        
        System.out.print("Insert person name > ");
        String personName = sc.nextLine().strip();

        System.out.print("Insert the contact telephone number > ");
        String telephoneNumber = sc.nextLine().strip();

        System.out.print("Insert the contact e-mail > ");
        String email = sc.nextLine().strip();

        Contact contactToRegister = null;

        try {
            contactToRegister = new Contact(new Person(personName), telephoneNumber, email);
            registerContactInGeneralList(contactToRegister);
            
            return contactToRegister;

        } catch (IllegalArgumentException exception) {
            System.out.printf("Insert valid data.%nError: %s", exception.getMessage());
        }

        return contactToRegister;
    }

    private void registerContactInGeneralList(Contact contactToRegister) {
        String registerAnswer = "Y";
        if (isPersonAlreadyRegistered(contactToRegister)) {
            System.out.println("Do you want to register this person again?");
            System.out.print("Answer (Y/n) > ");
            registerAnswer = sc.nextLine();
        }

        if (registerAnswer.contains("N") || registerAnswer.contains("n")) {
            System.out.println("Contact have not been registered.");
        } else {
            generalContactList.add(contactToRegister);
            System.out.printf("Contact of %s registered.%n", contactToRegister.getPersonAssociated().getName());
        }   
    }

    private boolean deleteContactFromSpecificList(Contact contactToDelete, ArrayList<Contact> contactListToDeleteObj) {
        boolean statusContactRemoved = contactListToDeleteObj.remove(contactToDelete);
        return statusContactRemoved;
    }

    public boolean deleteContactFromGeneralList(Contact contactToDelete) {
        boolean statusContactRemoved = deleteContactFromSpecificList(contactToDelete, generalContactList);
        return statusContactRemoved;
    }

    public boolean deleteContactFromGeneralList(String contactId) {
        if (isContactIdRegisteredInGeneralList(contactId)) {
            Contact contactToDelete = searchContactObjectById(contactId);
            boolean statusContactRemoved = deleteContactFromGeneralList(contactToDelete);
            return statusContactRemoved;
        } else {
            return false;
        }
    }

    private boolean isContactIdInsideContactArray(String contactId, ArrayList<Contact> searchList) {
        for (Contact contact : searchList) {
            if (contact.getId().equals(contactId)) {
                return true;
            }
        }
        return false;
    }

    public boolean isContactIdRegisteredInGeneralList(String contactId) {
        return isContactIdInsideContactArray(contactId, generalContactList);
    }

    private ArrayList<Contact> searchKeywordInContactsArray(String keyword, ArrayList<Contact> searchList) {
        ArrayList<Contact> contactsThatMatchesKeyword = new ArrayList<Contact>(); 
        for (Contact contact : searchList) {
            if (contact.toString().toLowerCase().contains(keyword.toLowerCase())) {
                contactsThatMatchesKeyword.add(contact);
            }
        }
        return contactsThatMatchesKeyword;
        }

    public ArrayList<Contact> searchKeywordInGeneralContactList(String keyword) {
        return searchKeywordInContactsArray(keyword, generalContactList);
        }
    
    public String callToExtractTheContactIdFromContactArray(ArrayList<Contact> contactListToExtractId) {
        String selectedIdFromUser = null;

        printContactsFromArray(contactListToExtractId);

        if (contactListToExtractId.size() == 1) {
            System.out.println("Is this output the contact you were searching for?");
            System.out.print("Answer(Y|n) > ");
            String answer = sc.nextLine();
            
            if (!answer.contains("N") && !answer.contains("n")) {
                selectedIdFromUser = (contactListToExtractId.get(0).getId());
            }
        } else if (contactListToExtractId.size() > 1){
            System.out.print("Insert the ID of the contact you want to select (Empty to null) > ");
            String idAnswer = sc.nextLine();
            if (isContactIdRegisteredInGeneralList(idAnswer)) {
                selectedIdFromUser = idAnswer;
            }
        }
        return selectedIdFromUser;
    }
    
    public Contact searchContactObjectById(String id) {
        for (Contact contact : generalContactList) {
            if (contact.getId().equals(id)) {
                return contact;
            }
        }
        return null;
    }

    public Contact runSearchContactObjectPrompt() {
        System.out.print("Insert the keyword to search in Contacts > ");
        String keyword = sc.nextLine();

        ArrayList<Contact> matches = searchKeywordInGeneralContactList(keyword);
        String selectedContactId = callToExtractTheContactIdFromContactArray(matches);

        if (selectedContactId == null) {
            System.out.println("No matches for this keyword.");
            return null;
        }

        Contact respectiveContactForTheId = searchContactObjectById(selectedContactId);
        return respectiveContactForTheId;
    }

    public void runDeleteContactPrompt() {
        String contactIdToDelete;
        do {
            System.out.print("Insert the contact Id > ");
            contactIdToDelete = sc.nextLine();
        } while (!isContactIdRegisteredInGeneralList(contactIdToDelete));

        boolean statusContactDelete = deleteContactFromGeneralList(contactIdToDelete);
        if (statusContactDelete) {
            System.out.println("Contact deleted with successful.");
        } else {
            System.out.println("Contact not deleted.");
        }
    }

    public boolean isPersonAlreadyRegistered(Contact contactToVerify) {
        for (Contact contact : generalContactList) {
            if (contact.getPersonAssociated().equals(contactToVerify.getPersonAssociated())) {
                return true;
            }
        }
        return false;
    }

    public static void runContactListManager() {
        ContactList contactListObject = new ContactList();
        int userChoice;
        do {
            userChoice = ContactList.getUserChoiceFromMenu();
            switch (userChoice) {
                case 1:
                    contactListObject.colectInfosAndRegisterContactPrompt();
                    break;
                case 2:
                    break;
                case 3:
                    contactListObject.runDeleteContactPrompt();
                    break;
                case 4:
                    contactListObject.runSearchContactObjectPrompt();
                    break;
                case 5:
                    contactListObject.printContactsInGeneralList();
                    break;
                default:
                    break;
            }
        } while(userChoice != 0);
    }
    public static void main(String[] args) {
        ContactList.runContactListManager();
    }
}
