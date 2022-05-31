package firstProject

class SkillsEmployee {
    static belongsTo = [employee:Employee,skills:Skills]
    static constraints = {
    }
}
