package lockup

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class GovernorateService {
    Governorate save(GrailsParameterMap params) {
        println "save service params = " + params
        Governorate governorate
        if (params.id)//edit
            governorate = Governorate.get(params.id)
        else //create
        {
            governorate=new Governorate()
        }
        governorate.properties=params
        governorate.save()
        println(governorate)
        return governorate
    }

    def deleteRow(GrailsParameterMap params) {
        Governorate governorate =Governorate.get(params.id)
        governorate.delete()
    }
}

