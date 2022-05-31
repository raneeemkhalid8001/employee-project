package firstProject

class RelateController {
    def relateService
    def index() {
        redirect(action:list())
    }
    def list(){
        def relate = Relate.list()
        [relate: relate]
    }
    def create(){
        Relate relate=new Relate()

        [relate: relate]
    }
    def save (){
        println "============================================="+params
        def result = relateService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "relate no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def show(){
        Relate relate=Relate.get(params.id)
        [relate: relate]
    }
    def edit(){
        [relate: Relate.get(params.id)]
    }
}

