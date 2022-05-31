package firstProject

class PositionController {
def positionService
    def index() {
        redirect(action:'list')
    }
    def list(){
        def allposition = Position.list()
        [allposition: allposition]
    }
    def create(){
        Position position=new Position()
        [position: position]
    }
    def save (){
        println "============================================="+params
        def result = positionService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "skill no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def show(){
        Position position=Position.get(params.id)
        [position: position]
    }
    def edit(){
        println params.id
        [position: Position.get(params.id)]
    }
}
