package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import rewards.Prop

@Transactional
class PositionService {

    Position save(GrailsParameterMap params) {
        println "save service params = " + params
        Position position
        if (params.id)//edit
            position =Position.get(params.id)
        else //create
        {
            position=new Position()
        }
        position.properties=params
//        prop.item =Item.findById(params.long('items'))//it return the record that have this id
        position.validate()
        println "validate = "+position.validate()

        return position.save()
    }
}
