package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import rewards.Item
import rewards.Product
import rewards.Prop

@Transactional
class SkillsService {

    Skills save(GrailsParameterMap params) {
        println "save service params = " + params
        Skills skill
        if (params.id)//edit
            skill =Skills.get(params.id)
        else //create
        {
            skill=new Skills()
        }
        skill.properties=params
//        skill.item = Item.findById(params.long('items'))
//        def props=params.list('propss')
//        props.each {
//            print("================================================="+it)
//            product.addToProps(Prop.findById(it))
//        }
//        println "------------"+product.props
        skill.validate()
        println "validate = "+skill.validate()
        skill.save()
        return skill

    }

}
