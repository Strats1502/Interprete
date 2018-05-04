public class Errors {

    public static void variableNotInstantiated(String name) {
        System.out.println(name + " not instantiated");
    }

    public static void variableTypeIncompatible(String name) {
        System.out.println(name + " value is not compatible");
    }

    public static void invalidOperation() {
        System.out.println("Invalid operation");
    }

}