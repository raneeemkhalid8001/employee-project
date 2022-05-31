package lockup

import grails.converters.JSON

class GovernorateController {
    def governorateService
    def index() {
        redirect(action: 'list')
    }
    def list(){
        def allGovernorate = Governorate.list()
        [allGovernorate:allGovernorate]
    }
    def deleteRow(){
        governorateService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        Governorate governorate =new Governorate()
        [governorate:governorate]
    }
    def edit(){
        [governorate: Governorate.get(params.id)]
    }
    def show(){
        Governorate governorate=Governorate.get(params.id)
        [governorate: governorate]
    }
    def save (){
        println "============================================="+params
        def result = governorateService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "governorate no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def getCities = {
        println "-----------------getCities-----------------"+params.long("id")
        def cities = []
        if (params.long("id")) {
            cities = City.findAllByGovernorate(Governorate.findById(params.long("id")))
        }
        if(!cities)
            cities =[]
        println "-----------------cities-----------------"+cities
        render cities as JSON
    }
}
