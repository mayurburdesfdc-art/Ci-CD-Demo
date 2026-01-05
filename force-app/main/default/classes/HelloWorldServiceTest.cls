@IsTest
private class HelloWorldServiceTest {
    @IsTest
    static void greetsName() {
        String result = HelloWorldService.greet('Apex');
        System.assertEquals('Hello, Apex!', result);
    }

    @IsTest
    static void greetsWorldWhenBlank() {
        System.assertEquals('Hello, World!', HelloWorldService.greet(''));
        System.assertEquals('Hello, World!', HelloWorldService.greet(null));
    }
}