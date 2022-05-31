package rewards

class PropController {
    def propService
    def index() {
        redirect(action:'list')
    }
    def list(){
        def allProp = Prop.list()
        [allProp: allProp]
    }
    def deleteRow(){
        propService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        Prop prop =new Prop()
        [prop:prop]
    }
    def edit(){
        [prop: Prop.get(params.id)]
    }
    def show(){
        Prop prop=Prop.get(params.id)
        [prop:prop]
    }
    def save (){
        println "============================================="+params
        def result = propService.save(params)
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
