package firstProject

class CertificateController {
    def certificateService
    def index() {
        redirect(action:list())
    }
    def list(){
        def allcertificate = Certificate.list()
        [allcertificate: allcertificate]
    }
    def create(){
        Certificate certificate=new Certificate()
        [certificate: certificate]
    }
    def save (){
        println "============================================="+params
        def result = certificateService.save(params)
        println "=====result======"+result
        if(!result.hasErrors()){
            println "certificate no error"
            redirect(action:"show",id :result?.id)//?.--> if result fech result.id because it make show for record and this record has an id
        }
        else {
            redirect(action:"create")
            println "has errors "
        }
    }
    def show(){
        Certificate certificate=Certificate.get(params.id)
        [certificate: certificate]
    }
    def edit(){
        [certificate: Certificate.get(params.id)]
    }
}

