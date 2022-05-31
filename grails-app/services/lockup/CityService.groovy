package lockup

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import rewards.Item

@Transactional
class CityService {
    City save(GrailsParameterMap params) {
        println "save service params = " + params
        City city
        if (params.id)//edit
            city = City.get(params.id)
        else //create
        {
            city=new City()
        }
        city.properties=params
        city.save()
        println(city)
        return city

    }

    def deleteRow(GrailsParameterMap params) {
        City city = City.get(params.id)
        city.delete()
    }
}
