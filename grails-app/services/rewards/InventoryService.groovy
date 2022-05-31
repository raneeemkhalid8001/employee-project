package rewards

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import groovy.sql.Sql
import org.hibernate.SessionFactory

@Transactional
class InventoryService {

//
//    def showProp(GrailsParameterMap params){
//        def c = Prop.createCriteria()
//        def results = c.list {
//            eq("id", "${params.id}")
//        }
//        println "the result is: "+results
//        return results
//    }
    def getProps(GrailsParameterMap params){
        return Prop.list()
    }
    def getItems(GrailsParameterMap params){
        return Item.list()
    }
    def search(GrailsParameterMap params) {
        println("--------------------------"+params)
        def c = Product.createCriteria()
        def results = c.list {
            or{
                ilike("name","${params.txtSearch}")
                ilike("sku","${params.txtSearch}")

            item{ // join
                ilike("itemName","${params.txtSearch}")
            }
            }
         }
        String query =" select prod.id from product prod\n" +
                "inner join item i on i.id = prod.item_id\n" +
                "where i.item_name ilike '${params.txtSearch}' "
        println "--------------------"+query
        def res = Product.createCriteria().list {
            sqlRestriction " this_.id in ( ${query})"
//            sqlRestriction " this_.id in ( 11,22 )"
        }
//        HQL
        def data =Product.executeQuery("from Product p  INNER JOIN p.item i where i.itemName = :itemName ",[itemName:params.txtSearch])
//       def item =Item.executeQuery("select id from Item where itemName =:x",[x : params.txtSearch])
//        println "the data is: "+item
        println "the data is: "+data
        println "the res is: "+res
        println "the result is: "+results
        return results
    }

    Product save(GrailsParameterMap params) {
        println "save service params = " + params
        Product product
         if (params.id)//edit
            product =Product.get(params.id)
        else //create
         {
             product=new Product()
    }
        product.properties=params
        product.item =Item.findById(params.long('items'))//it return the record that have this id
        println("++++++++++++++++++++++++"+Item.findById(params.long('items')))
//        product.props =Prop.findById(params.long('Propss'))
        def props=params.list('propss')
         props.each {
             print("================================================="+it)
            product.addToProps(Prop.findById(it))
        }
        println "------------"+product.props

        //Item.findBy it contain parameter that it come from this domain
//        product.name="samar"
//        product.price=12.0
//        product.sku="qwe"
        product.validate()
        println "validate = "+product.validate()
        product.save()
        return product
    }

    def deleteRow(GrailsParameterMap params) {
        Product p = Product.get(params.id)
        p.delete()
    }

}
