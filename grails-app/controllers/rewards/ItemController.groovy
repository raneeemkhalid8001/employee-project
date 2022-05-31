package rewards

class ItemController {
    def itemService
    def index() {
//        render "hello"
        redirect(action: 'list')
    }
    def list(){
        def allItems = Item.list()
        [allItems: allItems]
    }
    def deleteRow(){
        itemService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        Item item =new Item()
        [item:item]
    }
    def edit(){
        [item: Item.get(params.id)]
    }
    def show(){
        Item item=Item.get(params.id)
        [item:item]
    }
    def save (){
        println "============================================="+params
        def result = itemService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "product no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }

}
