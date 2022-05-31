package lockup

class City {
    String cityName
    static belongsTo = [governorate:Governorate]
    static constraints = {
        governorate nullable: true
    }
}
