package firstProject

import lockup.CertificateType

class Certificate {
//    String type
    String description
    static belongsTo = [employee:Employee,type : CertificateType]
    static constraints = {
        description nullable: true
        employee nullable: true
    }
}
