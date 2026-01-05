public with sharing class SimpleCalculatorService {
    public class CalculationException extends Exception {}

    public static Decimal add(Decimal a, Decimal b) {
        return (a == null ? 0 : a) + (b == null ? 0 : b);
    }

    public static Decimal subtract(Decimal a, Decimal b) {
        return (a == null ? 0 : a) - (b == null ? 0 : b);
    }

    public static Decimal multiply(Decimal a, Decimal b) {
        return (a == null ? 0 : a) * (b == null ? 0 : b);
    }

    public static Decimal divide(Decimal numerator, Decimal denominator) {
        if (denominator == null || denominator == 0) {
            throw new CalculationException('Cannot divide by zero.');
        }
        return (numerator == null ? 0 : numerator) / denominator;
    }
}