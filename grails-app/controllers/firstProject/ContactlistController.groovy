package firstProject

class ContactlistController {
    def contactlistService
    def index() {
        redirect(action:list())
    }
    def list(){
        def allcontactlist = Contactlist.list()
        [allcontactlist: allcontactlist]
    }
    def create(){
        Contactlist contactlist=new Contactlist()
        [contactlist: contactlist]
    }
    def save (){
        println "============================================="+params
        def result = contactlistService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "contactlist no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def show(){
        Contactlist contactlist=Contactlist.get(params.id)
        [contactlist: contactlist]
    }
    def edit(){
        [contactlist: Contactlist.get(params.id)]
    }
}
