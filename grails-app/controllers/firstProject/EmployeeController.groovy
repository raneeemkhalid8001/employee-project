package firstProject

import grails.converters.JSON
import lockup.City
import lockup.Country
import lockup.Governorate
import rewards.Product

class EmployeeController {
def employeeService
    def index() {
        redirect(action:'list')
    }
    def list(){
        def allEmployees = Employee.list()
        [allEmployees: allEmployees]
    }
    def edit(){
        [employee: Employee.get(params.id)]
    }
    def show(){
        Employee employeeInstance= Employee.get(params.id)
        def skills =employeeInstance.skillsEmployees.skills
        def certificate=employeeInstance.certificate
        def contactlist=employeeInstance.contactlist
        println "from show employee : "+ contactlist
        def address=employeeInstance.address
        def relate=employeeInstance.relate
        def position=employeeInstance.positionEmployees.position
           [employee: employeeInstance ,skills :skills,certificate:certificate,contactlist:contactlist,address:address,relate:relate,position:position]
    }

    def create(){
        Employee employee=new Employee()
        def countries= employeeService.getCountries(params)
        [employeeInstance: employee ,countries:countries]

    }
    def deleteRow(){
        employeeService.deleteRow(params)
        redirect(action:'list')
    }
    def save (){
        println "============================================="+params
        def result = employeeService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "employee no error"
            flash.message ="suuceeesssss"
//            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
            redirect(action:"create")//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            flash.error ="error"
        }
    }
    def getEmployee(){
        print("from getEmployee:"+params)
//        def employees=[]
//        if (params.long("id")) {
//            employees = PositionEmployee.findAllByPosition(Position.findById(params.long("id")))?.employee
//        }
       def employee=employeeService.getEmployees(params)
//        if(!employees)
//            employees =[]
//        println "-----------------cities-----------------"+employees
        render employee as JSON
    }
}
