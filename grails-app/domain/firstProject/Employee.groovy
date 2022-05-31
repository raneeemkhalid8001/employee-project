package firstProject
class Employee extends Person {
    Date beginingDate
    static hasMany = [relate:Relate,certificate:Certificate,contactlist:Contactlist,positionEmployees:PositionEmployee,skillsEmployees :SkillsEmployee]
    Address address
    static constraints = {
    }
    static mapping = {
      table('person')
    }
}
