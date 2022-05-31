package lockup

class CityController {
    def cityService
    def index() {
        redirect(action: 'list')
    }
    def list(){
        def allCity = City.list()
        [allCity: allCity]
    }
    def deleteRow(){
        cityService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        City city =new City()
        [city:city]
    }
    def edit(){
        [city: City.get(params.id)]
    }
    def show(){
        City city=City.get(params.id)
        [city: city]
    }
    def save (){
        println "============================================="+params
        def result = cityService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "city no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
}
