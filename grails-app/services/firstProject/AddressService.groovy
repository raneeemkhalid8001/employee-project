package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import lockup.City
import lockup.Country
import lockup.Governorate

@Transactional
class AddressService {
    def getCities(GrailsParameterMap params){
        return City.list()
    }
    Address save(GrailsParameterMap params) {
        println "save service params = " + params
        Address address
        if (params.id)//edit
            address =Address.get(params.id)
        else //create
        {
            address=new Address()
        }
        address.properties=params
        address.city= City.findById(params.long("cities"))
        address.country= Country.findById(params.long("countries"))
        address.governorate=Governorate.findById(params.long("governorates"))
        address.validate()
        println "validate = "+address.validate()
        address.save()
        return address

    }
}
