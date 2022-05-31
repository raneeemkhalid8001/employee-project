package firstProject

class PositionEmployee {
    static belongsTo = [employee:Employee,position:Position]
    static constraints = {
    }
}
