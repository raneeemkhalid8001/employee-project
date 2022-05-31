package firstProject
class SkillsController {
    def skillsService
    def index() {
        redirect(action:list())
    }
    def list(){
        def allskills = Skills.list()
        [allskills: allskills]
    }
    def create(){
        Skills skill=new Skills()
        [skill: skill]
    }
    def save (){
        println "============================================="+params
        def result = skillsService.save(params)
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
        Skills skill=Skills.get(params.id)
        [skill:skill]
    }
    def edit(){
        [skill: Skills.get(params.id)]
    }
}

