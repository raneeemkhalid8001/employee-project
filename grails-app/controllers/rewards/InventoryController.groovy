package rewards
class InventoryController {
    def inventoryService
    def index() {
        redirect(action: 'list')
    }
    def remove(){
        render "not found"
    }
    def list(){
        def allProducts = Product.list()
        [allProducts: allProducts]
    }
//    def showprop(){
//        def result = inventoryService.showProp(params)
//        println("---------------------------"+result)
//    }
    def edit(){
        Product p = Product.get(params.id)
//        [product: p.get(params.id)]
        def item=p.item
        def props =p.props
        [product: p,item:inventoryService.getItems(params),props:inventoryService.getProps(params)]
//        def productName="Breakfastbend"
//        def sku="sku"
//        [product:productName,sku:sku]

    }
    def show(){
//        Item item=new Item()
//        Product p = Product.get(params.id)
        [product: Product.get(params.id)]
//       [product:p.name,sku:p.sku,price:p.price,item:item.itemName]
    }

    def create(){
//        [ProductInstance:new Product()]
        Product p=new Product()
        def item=p.item
        def props =p.props
        [ProductInstance: p,item:inventoryService.getItems(params),props:inventoryService.getProps(params)]
    }
    def deleteRow(){
        inventoryService.deleteRow(params)
        redirect(action:'list')
    }

    def save (){
        println "============================================="+params
        def result = inventoryService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "product no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def search(){
        def result=inventoryService.search(params)
        render(view: '_tblData',model: [allProducts: result])
    }
}
