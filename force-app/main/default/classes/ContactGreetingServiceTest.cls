@IsTest
private class ContactGreetingServiceTest {
    @IsTest
    static void greetsFirstNameWhenPresent() {
        Contact c = new Contact(FirstName = 'Ada', LastName = 'Lovelace');
        System.assertEquals('Hello, Ada!', ContactGreetingService.greetContact(c));
    }

    @IsTest
    static void greetsLastNameWhenNoFirstName() {
        Contact c = new Contact(LastName = 'Curie');
        System.assertEquals('Hello, Curie!', ContactGreetingService.greetContact(c));
    }

    @IsTest
    static void greetsFallbackWhenBlank() {
        System.assertEquals('Hello, friend!', ContactGreetingService.greetContact(null));
        Contact c = new Contact();
        System.assertEquals('Hello, friend!', ContactGreetingService.greetContact(c));
    }
}