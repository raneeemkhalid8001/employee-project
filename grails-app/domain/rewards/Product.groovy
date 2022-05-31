package rewards
    class Product {
        String name
        String sku
        Float price
        Item item
        static hasMany = [props:Prop]
        static constraints = {
            item nullable: true
        }
    }


