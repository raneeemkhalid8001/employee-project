package firstProject
class Relate {
    String relateType
    String note
    static belongsTo = [employee:Employee]
    static constraints = {
        note nullable: true
        relateType inList:['mother', 'father', 'wife', 'husband','children','single']
        employee nullable: true
    }
}
