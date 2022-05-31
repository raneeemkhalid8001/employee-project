package firstProject

import lockup.City

class AddressController {
    def addressService
    def index() {
        redirect(action: 'list')
    }
    def list(){
        def address = Address.list()
        [address: address]
    }
    def deleteRow(){
        addressService.deleteRow(params)
        redirect(action:'list')
    }
    def create(){
        Address address =new Address()
        [address: address,cities:addressService.getCities(params)]
    }
    def edit(){
        [address: Address.get(params.id)]
    }
    def show(){
        Address address=Address.get(params.id)
        [address: address]
    }
    def save (){
        println "============================================="+params
        def result = addressService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "address no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
}
