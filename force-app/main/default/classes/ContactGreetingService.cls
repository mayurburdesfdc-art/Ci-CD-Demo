public with sharing class ContactGreetingService {
    public static String greetContact(Contact c) {
        if (c == null) {
            return 'Hello, friend!';
        }
        String namePart = String.isBlank(c.FirstName) ? c.LastName : c.FirstName;
        if (String.isBlank(namePart)) {
            return 'Hello, friend!';
        }
        return 'Hello, ' + namePart + '!';
    }
}