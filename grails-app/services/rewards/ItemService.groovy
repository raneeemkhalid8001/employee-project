package rewards

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class ItemService {
    Item save(GrailsParameterMap params) {
        println "save service params = " + params
        Item item
        if (params.id)//edit
            item = Item.get(params.id)
        else //create
        {
            item=new Item()
        }
        item.properties=params
        item.save()
        println(item)
        return item

    }

    def deleteRow(GrailsParameterMap params) {
        Item item = Item.get(params.id)
        item.delete()
    }

}
