package lockup

class CountryController {
    def countryService
    def index() {
        redirect(action: 'list')
    }
    def list(){
        def allCountry = Country.list()
        [allCountry: allCountry]
    }
    def deleteRow(){
        countryServiceService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        Country country =new Country()
        [country:country]
    }
    def edit(){
        [country: Country.get(params.id)]
    }
    def show(){
        Country country=Country.get(params.id)
        [country: country]
    }
    def save (){
        println "============================================="+params
        def result = countryService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "country no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
}
