package firstProject

class Person {
    String firstName
    String lastName
    Date birthday
    Address address
    static constraints = {
        firstName nullable: true
        lastName nullable: true
    }
//    static mapping = {  tablePerHierarchy(false)}
}
