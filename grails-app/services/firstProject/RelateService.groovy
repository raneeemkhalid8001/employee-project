package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class RelateService {
    Relate save(GrailsParameterMap params) {
        println "save service params = " + params
        Relate relate
        if (params.id)//edit
            relate =Relate.get(params.id)
        else //create
        {
            relate=new Relate()
        }
        relate.properties=params
        relate.validate()
        println "validate = "+relate.validate()
        relate.save()
        return relate
    }
}

