package lockup

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class CountryService {
    Country save(GrailsParameterMap params) {
        println "save service params = " + params
        Country country
        if (params.id)//edit
            country = Country.get(params.id)
        else //create
        {
            country=new Country()
        }
        country.properties=params
        country.save()
        println(country)
        return country
    }

    def deleteRow(GrailsParameterMap params) {
        Country country = Country.get(params.id)
        country.delete()
    }
}
