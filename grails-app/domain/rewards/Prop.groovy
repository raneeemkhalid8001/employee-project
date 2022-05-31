package rewards

class Prop {
    String name
    Integer size
    String color
    static belongsTo = [product:Product]
    static constraints = {
        product nullable: true
    }
}
