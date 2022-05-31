package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap
import lockup.CertificateType
import lockup.City
import lockup.Country
import lockup.Governorate
import rewards.Item
import rewards.Product
import rewards.Prop

@Transactional
class EmployeeService {
    def getEmployees(GrailsParameterMap params){
        print("++++++++++"+params)
                String query =" select id from person\n" +
                        "where id in (select employee_id from position_employee where position_id = ${params.long("id")})"
                println "--------------------"+query
                def res = Employee.createCriteria().list {
                    sqlRestriction " this_.id in ( ${query})"
        }
        println res
        return res
    }
    Employee save(GrailsParameterMap params) {
        println "save service params = " + params
        Employee employee
        if (params.id) {//edit
            employee = Employee.get(params.id)
        }
        else //create
        {
            employee=new Employee()

        }
        employee.properties=params
        def birthday=params.date("birthday",['yyyy-MM-dd','yyyy-MM-dd hh:mm'])
        def beginingDate=params.date("beginingDate",['yyyy-MM-dd','yyyy-MM-dd hh:mm'])
//        println birthday
//        println beginingDate
        employee.birthday =birthday
        employee.beginingDate =beginingDate
//        println  employee.birthday
//        println  employee.beginingDate
        if(employee?.positionEmployees){
            println "------------------------- 1"
            employee?.positionEmployees*.delete()
            employee?.positionEmployees?.clear()
        }
        if(employee?.skillsEmployees){
            println "------------------------- 2"
            employee?.skillsEmployees*.delete()
            employee?.skillsEmployees?.clear()
        }
        if(employee?.contactlist){
            println "------------------------- 3"
            employee?.contactlist*.delete()
            employee?.contactlist?.clear()
        }
        if(employee?.certificate){
            println "------------------------- 4"
            employee?.certificate*.delete()
            employee?.certificate?.clear()
        }
        if(employee?.relate){
            println "------------------------- 5"
            employee?.relate*.delete()
            employee?.relate?.clear()
        }
//        println("************************************** "+params.date("beginingDate",['yyyy-MM-dd','yyyy-MM-dd hh:mm']))

        Address address =new Address(city: City.findById(params.long('city')),country: Country.findById(params.long('country')),
                governorate:Governorate.findById(params.long('governorate')))
//        Country.findById(params.long('country')
//                select * from country where id = 00 ;
//        Country.findById(params.long('country')).countryName
//        select country_name from country where id = 10 ;
        employee.address =address
        println "=============================address===================="+employee.address
        Certificate certificate
        println params.list("certificateData")
        if(params.list("certificateData")){
            (params.list("certificateData")).each { it->
                certificate = new Certificate()
                def typeId = it?.toString().split("_")[0]
                def description = it?.toString().split("_")[1]
                certificate.type = CertificateType.findById(Long.parseLong(typeId))
                certificate.description = description
                certificate.save()
                employee.addToCertificate(certificate)
            }
        }

        Contactlist contactlist
        println params.list("valueOptionData")
        if(params.list("valueOptionData")){
            (params.list("valueOptionData")).each { it->
                contactlist = new Contactlist()
                def type = it?.toString().split("_")[0]
                def phone = Long.parseLong(it?.toString().split("_")[1]?:"0")
                def email = it?.toString().split("_")[2]
                contactlist.type = ContactType.valueOf(type)
                contactlist.phone = phone
                contactlist.email = email
                contactlist.save()
                employee.addToContactlist(contactlist)
            }
        }
        println "=============================contactlist===================="+employee.contactlist
        Relate relate
        println params.list("relateData")

        if(params.list("relateData")){
            (params.list("relateData")).each { it->
                relate = new Relate()
                def relateType = it?.toString()?.split("_")[0]
                def note = it?.toString()?.split("_")[1]
                relate.relateType = relateType
                relate.note = note
                relate.save()
                employee.addToRelate(relate)
            }
        }
//        Relate relate=new Relate(relateType: params.relateType,note: params.note)
//        employee.addToRelate(relate)
        println "=============================relate===================="+employee.relate

        def position=params.list('positionName')
        PositionEmployee positionEmployee
        position.each { it->
            println "position id = " +it.getClass()
            employee.addToPositionEmployees(new PositionEmployee(position: Position.findById(Long.parseLong(it.toString()))))
        }
        println "=============================position===================="+employee.positionEmployees
        def skill=params.list('skillName')
        skill.each {
            println "skills id = "+it
            employee.addToSkillsEmployees(new SkillsEmployee(skills: Skills.findById(it)))
        }
        println "=============================skill===================="+employee.skillsEmployees

        employee.validate()
        println "validate = "+employee.validate()
        employee.errors.each {
            println "error "+it
        }
        employee.save()
//        def position=params.list('positionName')
//        PositionEmployee positionEmployee
//        position.each { it->
//            println "position id = " +it.getClass()
//            positionEmployee = new PositionEmployee(position: Position.findById(Long.parseLong(it.toString())),employee:employee).save()
//        }
        return employee
    }
    def deleteRow(GrailsParameterMap params) {
        Employee p = Employee.get(params.id)
        Address address =p.address
        p.delete()
        address.delete()

    }

    def getCountries(GrailsParameterMap params) {
        return Country.list()

    }
}

