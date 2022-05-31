package firstProject

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class CertificateService {
    Certificate save(GrailsParameterMap params) {
        println "save service params = " + params
        Certificate certificate
        if (params.id)//edit
            certificate =Certificate.get(params.id)
        else //create
        {
            certificate=new Certificate()
        }
        certificate.properties=params
        certificate.validate()
        println "validate = "+certificate.validate()
        certificate.save()
        return certificate

    }

}
