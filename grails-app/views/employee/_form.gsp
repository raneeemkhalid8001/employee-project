<div style=" width:50%;box-shadow: 0 1px 4px grey;margin:10px auto">
    <div style="padding: 30px 0">
        <div class="info">
                        <g:hiddenField name="id" value="${employee?.id}"></g:hiddenField>
            <label>First Name: </label><input type="text" name="firstName" value="${employee?.firstName}" placeholder="firstName" required="required"/>
            <label>Last Name: </label><input type="text" name="lastName" value="${employee?.lastName}" placeholder="lastName" />
            <label>birthday: </label><input type="date" value="${g.formatDate(date:employee?.birthday,format:'yyyy-MM-dd')}" name="birthday"/>
            <label>Employment Date: </label><input type="date" value="${g.formatDate(date:employee?.beginingDate,format:'yyyy-MM-dd')}" name="beginingDate"/>
        </div>
        <h3 style="text-align: center;margin: 5px">your address is: </h3>
        <div class="addressdiv">
            <div class="address">
                <label>City:</label>
                <g:select class="select"  name="city" from="${lockup.City?.list()}" optionKey="id" optionValue="cityName" value="${employee?.address?.city?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
                <label>Country:</label><g:select class="select" name="country" from="${lockup.Country.list()}" optionKey="id" optionValue="countryName" value="${employee?.address?.country?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
                <label>Governorate:</label><g:select class="select" name="governorate" from="${lockup.Governorate.list()}" optionKey="id" optionValue="governorateName" value="${employee?.address?.governorate?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            </div>
        </div>
        <h3 style="text-align: center;margin: 5px">your position:</h3>
        <div class="position">
            <lable style="display: block;margin-bottom: 5px">Position:</lable>
            <g:select class="select" style="height: 72px;width: 245px" name="positionName" from="${firstProject.Position.list()}" optionKey="id" optionValue="positionName" value="${employee?.positionEmployees?.position?.id}"  />
        </div>
        <h3 class="h3" style="text-align: center;margin: 5px">Your contact</h3>
        <section class="contactSection">
            <div  class="divtable">
                <table  class="table">
                    <thead>
                    <tr>
                        <th>Type</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>
                    <tr id="data">
                        <td><g:select id="type" name="type" from="${firstProject?.ContactType?.values()}" /></td>
                        <td><input id="phone" type="text" name="phone" placeholder="Enter phone" /></td>
                        <td><input id="email" type="text" name="email" placeholder="Enter email"/></td>
                        <td ><button type="button" onclick="add()" style="background-color: #fff;border: 2px solid white" ><i class="fa-solid fa-plus" style="background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px"></i></button></td>
                    </tr>
                    </thead>
                    <tbody class="tbody" id="contactTable">
                    <g:each in="${employee.contactlist}" var="thisEmployeecontact">
                        <tr>
                            <td>${thisEmployeecontact?.type}</td>
                            <td>${thisEmployeecontact?.phone}</td>
                            <td>${thisEmployeecontact?.email}</td>
                            <td><button style='background-color: #fff;border: 2px solid white;color:red'  onclick='deleteRow(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button><input type='hidden' class='valueOptionData' name='valueOptionData' value="${thisEmployeecontact?.type}_${thisEmployeecontact?.phone}_${thisEmployeecontact?.email}"></td>
                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div>
        </section>
        <h3 style="text-align: center;margin: 5px">your certificate is: </h3>
        <section class="contactSection">
            <div  class="divtable">
                <table  class="table">
                    <thead>
                    <tr>
                        <th>Type</th>
                        <th>description</th>
                        <th>Action</th>
                    </tr>
                    <tr id="dataa">
                        <td><g:select id="certype"  name="certificateType" from="${lockup.CertificateType.list()}" optionKey="id" optionValue="name" /></td>
                        <td><input id="description" type="text" name="description"/></td>
                        <td ><button type="button" onclick="addCert()" style="background-color: #fff;border: 2px solid white"><i class="fa-solid fa-plus" style="background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px"></i></button></td>
                    </tr>
                    </thead>
                    <tbody class="tbody" id="certificateTable">
                    <g:each in="${employee.certificate}" var="thisEmployecertificate">
                        <tr>
                            <td>${thisEmployecertificate?.type?.name}</td>
                            <td>${thisEmployecertificate?.description}</td>
                            <td><button style='background-color: #fff;border: 2px solid white;color:red' onclick='deleteRow(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button><input type='hidden' class='certificateData' name='certificateData' value="${thisEmployecertificate?.type?.id}_${thisEmployecertificate?.description}"></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </section>
        <h3 style="text-align: center;margin: 5px">your Relates:</h3>
        <section class="contactSection">
            <div  class="divtable">
                <table  class="table">
                    <thead>
                    <tr>
                        <th>Relate</th>
                        <th>note</th>
                        <th>Action</th>
                    </tr>
                    <tr >
                        <td><g:select id="relateType" name="relateType" from="${firstProject.Relate.getConstrainedProperties().relateType.inList}"  /></td>
                        <td><input id="note" type="text" name="note" /></td>
                        <td ><button type="button" onclick="addRelate()" style="background-color: #fff;border: 2px solid white"><i class="fa-solid fa-plus" style="background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px"></i></button></td>
                    </tr>
                    </thead>
                    <tbody class="tbody" id="relateTable">
                    <g:each in="${employee.relate}" var="thisEmployeecontact">
                        <tr>
                            <td>${thisEmployeecontact?.relateType}</td>
                            <td>${thisEmployeecontact?.note}</td>
                            <td><button style='background-color: #fff;border: 2px solid white;color:red' onclick='deleteRow(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button><input type='hidden' class='relateData' name='relateData' value="${thisEmployeecontact?.relateType}_${thisEmployeecontact?.note}"></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </section>
        <h3 style="text-align: center;margin: 5px">your skills:</h3>
        <section class="sectionSkills">
            <div class="skillstable">
                <table>
                    <thead>
                    <th>skills</th>
                    </thead>
                    <tbody>
                    <td><g:select name="skillName" from="${firstProject.Skills.list()}" multiple="" optionKey="id" optionValue="skillName" value="${employee?.skillsEmployees?.skills?.id}"/></td>
                    </tbody>
                </table>
            </div>
        </section>
        <div class="button">
            <button class="save" type="submit">save</button>
            <g:link controller="employee" action="list" class="save" style="text-decoration: none;color: black;display: flex;justify-content: center;align-items: center;text-decoration: none;color: black;">Cancel</g:link>
        </div>
    </div>
</div>
<script>
    var optionList=[]

    function add(){
        // var e=window.document.getElementById("addNew");
        // e.style.display = "block";
        var type=document.getElementById("type").value;
        var phone=document.getElementById("phone").value;
        var email=document.getElementById("email").value;
        console.log("type : " + type)
        console.log("phone : " + phone)
        console.log("email : " + email)
        if(type!=""){
            var recordInfo = type+"_"+phone+"_"+email
            var key = recordInfo;
            console.log(key);
            var result = optionList.indexOf(key);
            if(result == -1){
                optionList.push(key) ;
                var vType = "<td>" + type + "<input type='hidden' name='valueOptionData' value='" + recordInfo  + "'></td>" ;
                var vPhone =`<td>`+phone+`</td>`;
                var vEmail=`<td>`+email+`</td>`;
                var delAction = "<td><button style='background-color: #fff;border: 2px solid white;color:red' value='" + recordInfo  + "' onclick='deleteRow(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button></td>" ;
                var tbody=document.getElementById("contactTable");
                tbody.innerHTML+=`<tr>`+vType+vPhone+vEmail+delAction+`</tr>`;
                document.getElementById("type").value ="";
                document.getElementById("phone").value="";
                document.getElementById("email").value="";
            }
        }
    }
    var certList=[]

    function addCert(){
        var certTypeId=document.getElementById("certype").value;
        var certtype=document.getElementById("certype");
        var text = certtype.options[certtype.selectedIndex].text;
        var description=document.getElementById("description").value;
        console.log("certtype : " + certtype)
        console.log("description : " + description)
        if(certtype!=""){
            var recordInfo = certTypeId+"_"+description
            var key = recordInfo;
            console.log(key);
            var result = certList.indexOf(key);
            if(result == -1){
                certList.push(key) ;
                var vType = "<td>" + text + "<input type='hidden' class='certificateData' name='certificateData' value='" + recordInfo  + "'></td>" ;
                var vDescription =`<td>`+description+`</td>`;
                var delAction = "<td><button id='delBtn' style='background-color: #fff;border: 2px solid white;color:red' value='" + recordInfo  + "' onclick='deleteRowcert(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button></td>" ;
                var tbody=document.getElementById("certificateTable");
                tbody.innerHTML+=`<tr>`+vType+vDescription+delAction+`</tr>`;
                document.getElementById("certype").value ="";
                document.getElementById("description").value="";
            }
        }
    }
    var relateList=[]

    function addRelate(){
        var relateType=document.getElementById("relateType").value;
        var note=document.getElementById("note").value;
        console.log("relateType : " + relateType)
        console.log("note : " + note)
        if(relateType!=""){
            var recordInfo = relateType+"_"+note
            var key = recordInfo;
            console.log(key);
            var result = relateList.indexOf(key);
            if(result == -1){
                relateList.push(key) ;
                var vType = "<td>" + relateType + "<input type='hidden' class='relateData' name='relateData' value='" + recordInfo  + "'></td>" ;
                var vNote =`<td>`+note+`</td>`;
                var delAction = "<td><button id='delBtn' style='background-color: #fff;border: 2px solid white;color:red' value='" + recordInfo  + "' onclick='deleteRowrelate(this);return false;'><i class='fa-solid fa-trash' style='background-color: #f0f5f5;font-size: 13px; padding: 7px;border-radius: 5px'></i></button></td>" ;
                var tbody=document.getElementById("relateTable");
                tbody.innerHTML+=`<tr>`+vType+vNote+delAction+`</tr>`;
                document.getElementById("relateType").value ="";
                document.getElementById("note").value="";
            }
        }
    }
    function deleteRowrelate(this_){
        certList = arrayRemove(relateList, this_.value);//delete from option list
        this_.closest("tr").remove();//delete from table
    }
    function deleteRowcert(this_){
        console.log("certList "+certList);
        certList = arrayRemove(certList, this_.value);//delete from option list
        this_.closest("tr").remove();//delete from table
    }
    function deleteRow(this_){
        // alert("   1 - "+optionList);
        console.log("optionList "+optionList);

        optionList = arrayRemove(optionList, this_.value);//delete from option list
        this_.closest("tr").remove();//delete from table
        // alert("   2 - "+optionList);
    }


    function arrayRemove(arr, value) {

        var res =  arr.filter(function(ele){
            return ele != value;
        });
        // alert(res);
        return res;
    }
</script>