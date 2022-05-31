package rewards

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class PropService {

    Prop save(GrailsParameterMap params) {
        println "save service params = " + params
        Prop prop
        if (params.id)//edit
            prop =Prop.get(params.id)
        else //create
        {
            prop=new Prop()
        }
        prop.properties=params
//        prop.item =Item.findById(params.long('items'))//it return the record that have this id
        prop.validate()
        println "validate = "+prop.validate()
        prop.save()
        return prop
    }

    def deleteRow(GrailsParameterMap params) {
        Prop p = Prop.get(params.id)
        p.delete()
    }
}
