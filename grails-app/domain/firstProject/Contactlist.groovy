package firstProject

class Contactlist {
    Long phone
    String email
    static belongsTo = [employee:Employee]
    ContactType type //enum
    static constraints = {
//        type inList: ['home' ,'business']
        email email: true
        employee nullable: true
//        type inList: ContactType.values()*.id
    }
}
