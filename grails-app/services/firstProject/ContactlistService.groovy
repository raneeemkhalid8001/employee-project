package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ContactlistService {

    Contactlist save(GrailsParameterMap params) {
        println "save service params = " + params
        Contactlist contactlist
        if (params.id)//edit
            contactlist =Contactlist.get(params.id)
        else //create
        {
            contactlist=new Contactlist()
        }
        contactlist.properties=params
        contactlist.type=ContactType.valueOf(params.type)
        println "type ==========="+ContactType.valueOf(params.type)
        contactlist.validate()
        println "validate = "+contactlist.validate()
        contactlist.save()
        return contactlist
    }
}
