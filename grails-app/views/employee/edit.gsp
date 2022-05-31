
<%@ page import="firstProject.Skills; firstProject.Certificate; firstProject.Position; firstProject.Contactlist" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    .divtable{
        width: 80%;
        margin: auto;
        display: flex;
        justify-content: center;
    }
    table td, table th {
        /*border: 1px solid #dddddd;*/
        text-align: left;
        padding: 5px;
        text-align: center;
    }
    /*.tbody tr:nth-child(even) {*/
    /*    background-color:#f0f5f5;*/
    /*}*/
    .add{
        text-decoration: none;
        color: white;
        font-size: 13px;
        background-color: grey;
        border: 2px solid grey;
        padding: 5px 10px;
        border-radius: 12px;
    }
    .contactSection{
        display: flex;
        justify-content: center;
        /*text-align: center;*/
        /*width: 60%;*/
    }
    .skillstable{
        width: 60%;
        margin: 20px auto;
        text-align: center;
        border: 1px solid #f0f5f5;

    }
    .address{
        list-style-type: none;
    }
    .info{
        margin: auto;
        width: 70%;
        height: 330px;
        border-radius: 20px;
        padding: 20px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .position {
        margin: auto;
        width: 70%;
        height: 147px;
        border-radius: 15px;
        padding: 10px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .relate{
        margin: auto;
        width: 70%;
        height: 200px;
        border-radius: 15px;
        padding: 10px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .sectionSkills{
        margin: auto;
        width: 70%;
        height: 180px;
        border-radius: 15px;
        padding: 10px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .addressdiv{
        width: 70%;
        height: 230px;
        margin: 10px auto;
        border-radius: 20px;
        padding: 10px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .certificate{
        width: 70%;
        height: 200px;
        margin: 10px auto;
        border-radius: 20px;
        padding: 10px 20px;
        background-color: #f0f5f5;
        text-align: center;
    }
    .info label,.certificate label,.relate label{
        /*margin-bottom: 10px;*/
        padding:5px;
        display: block;
    }
    .addressdiv .address label{
        padding:2px;
        display: block;
    }
    .info input,.select,.certificate input{
        border-radius: 10px;
        width: 240px;
        padding: 0 10px;
        height: 34px;
        border: 1px solid white;
    }
    .save{
        margin-top: 20px;
        margin-right: 20px;
        width: 82px;
        height: 37px;
        border: 1px solid #f0f5f5;
        background-color: #f0f5f5;
        border-radius: 15px
    }
    .button{
        display: flex;
        justify-content: center;
    }
    </style>
</head>
<body>
<g:form action="save" autocomplete="off" >
    <g:render template="form" model="[employee:employee]"/>

%{--    <div style=" width:50%;box-shadow: 0 1px 4px grey;margin:10px auto">--}%
%{--        <div style="padding: 30px 0">--}%
%{--           <div class="info">--}%
%{--                   <label>First Name: </label><input type="text" name="firstName" placeholder="firstName" required="required"/>--}%
%{--                  <label>Last Name: </label><input type="text" name="lastName" placeholder="lastName" />--}%
%{--                  <label>birthday: </label><input type="date" name="birthday"/>--}%
%{--                 <label>Employment Date: </label><input type="date" name="beginingDate"/>--}%
%{--           </div>--}%
%{--            <h3 style="text-align: center;margin: 5px">your address is: </h3>--}%
%{--            <div class="addressdiv">--}%
%{--                <div class="address">--}%
%{--                    <label>City:</label><g:select class="select" name="city" from="${lockup.City.list()}" optionKey="id" optionValue="cityName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>--}%
%{--                    <label>Country:</label><g:select class="select" name="country" from="${lockup.Country.list()}" optionKey="id" optionValue="countryName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>--}%
%{--                    <label>Governorate:</label><g:select class="select" name="governorate" from="${lockup.Governorate.list()}" optionKey="id" optionValue="governorateName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--            <h3 style="text-align: center;margin: 5px">your position:</h3>--}%
%{--            <div class="position">--}%
%{--                <lable style="display: block;margin-bottom: 5px">Position:</lable><g:select class="select" name="positionName" from="${firstProject.Position.list()}" optionKey="id" optionValue="positionName" value="" />--}%
%{--            </div>--}%
%{--****************************************************************************************************************--}%
%{--            --}%%{--            <h3>your contact is: </h3>--}%
%{--            <ul>--}%
%{--                <li>type:<g:select name="type" from="${firstProject?.ContactType?.values()}" required="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/></li>--}%
%{--                <li>phone:<input type="text" name="phone" style="margin-bottom: 10px;margin-left: 18px"/></li>--}%
%{--                <li>email:<input type="text" name="email" style="margin-bottom: 10px;margin-left: 18px"/></li>--}%
%{--            </ul>--}%
%{--            <br>--}%
%{--            <button onclick="add()">ADD NEW CONTACT</button>--}%
%{--            <div id="addNew" style="display: none">--}%
%{--                <ul>--}%
%{--                    <li>type:<g:select name="type" from="${firstProject?.ContactType?.values()}" required="true" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/></li>--}%
%{--                    <li>phone:<input type="text" name="phone" style="margin-bottom: 10px;margin-left: 18px"/></li>--}%
%{--                    <li>email:<input type="text" name="email" style="margin-bottom: 10px;margin-left: 18px"/></li>--}%
%{--                </ul>--}%
%{--            </div>--}%
%{--            <h3 class="h3" style="text-align: center;margin: 5px">Your contact</h3>--}%
%{--            <section class="contactSection">--}%
%{--            <div  class="divtable">--}%
%{--                <table  class="table">--}%
%{--                    <thead>--}%
%{--                    <tr>--}%
%{--                        <th>Type</th>--}%
%{--                        <th>Phone</th>--}%
%{--                        <th>Email</th>--}%
%{--                        <th>Action</th>--}%
%{--                    </tr>--}%
%{--                    <tr id="data">--}%
%{--                        <td><g:select id="type" name="type" from="${firstProject?.ContactType?.values()}" /></td>--}%
%{--                        <td><input id="phone" type="text" name="phone" placeholder="Enter phone"/></td>--}%
%{--                        <td><input id="email" type="text" name="email" placeholder="Enter email"/></td>--}%
%{--                        <td ><button type="button" onclick="add()" >ADD</button></td>--}%
%{--                    </tr>--}%
%{--                    </thead>--}%
%{--                    <tbody class="tbody" id="contactTable">--}%

%{--                    </tbody>--}%
%{--                </table>--}%
%{--            </div>--}%
%{--        </section>--}%
%{--            <h3 style="text-align: center;margin: 5px">your certificate is: </h3>--}%
%{--            <section class="contactSection">--}%
%{--                <div  class="divtable">--}%
%{--                    <table  class="table">--}%
%{--                        <thead>--}%
%{--                        <tr>--}%
%{--                            <th>Type</th>--}%
%{--                            <th>description</th>--}%
%{--                            <th>Action</th>--}%
%{--                        </tr>--}%
%{--                        <tr id="dataa">--}%
%{--                            <td><g:select id="certype"  name="certificateType" from="${lockup.CertificateType.list()}" optionKey="id" optionValue="name" value="" /></td>--}%
%{--                            <td><input id="description" type="text" name="description" /></td>--}%
%{--                            <td><textarea id="description" name="description" rows="4" cols="4"></textarea></td>--}%
%{--                            <td ><button type="button" onclick="addCert()" >ADD</button></td>--}%
%{--                        </tr>--}%
%{--                        </thead>--}%
%{--                        <tbody class="tbody" id="certificateTable">--}%

%{--                        </tbody>--}%
%{--                    </table>--}%
%{--                </div>--}%
%{--            </section>--}%
%{--            <h3 style="text-align: center;margin: 5px">your Relates:</h3>--}%
%{--            <section class="contactSection">--}%
%{--                <div  class="divtable">--}%
%{--                    <table  class="table">--}%
%{--                        <thead>--}%
%{--                        <tr>--}%
%{--                            <th>Relate</th>--}%
%{--                            <th>note</th>--}%
%{--                            <th>Action</th>--}%
%{--                        </tr>--}%
%{--                        <tr >--}%
%{--                            <td><g:select id="relateType" name="relateType" from="${firstProject.Relate.getConstrainedProperties().relateType.inList}" value="" /></td>--}%
%{--                            <td><input id="note" type="text" name="note" /></td>--}%
%{--                            <td ><button type="button" onclick="addRelate()" >ADD</button></td>--}%
%{--                        </tr>--}%
%{--                        </thead>--}%
%{--                        <tbody class="tbody" id="relateTable">--}%
%{--                        </tbody>--}%
%{--                    </table>--}%
%{--                </div>--}%
%{--            </section>--}%
%{--            <h3>your skills:</h3>--}%
%{--            <li>skills:<g:select name="skillName" from="${firstProject.Skills.list()}" multiple="" optionKey="id" optionValue="skillName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>--}%
%{--            <br>--}%
%{--            <h3 style="text-align: center;margin: 5px">your skills:</h3>--}%
%{--            <section class="sectionSkills">--}%
%{--            <div class="skillstable">--}%
%{--                <table>--}%
%{--                    <thead>--}%
%{--                    <th>skills</th>--}%
%{--                    </thead>--}%
%{--                    <tbody>--}%
%{--                    <td><g:select name="skillName" from="${firstProject.Skills.list()}" multiple="" optionKey="id" optionValue="skillName" value=""/></td>--}%
%{--                    </tbody>--}%
%{--                </table>--}%
%{--            </div>--}%
%{--        </section>--}%
%{--            <div class="button">--}%
%{--                <button class="save" type="submit">save</button>--}%
%{--                <g:link controller="employee" action="list" class="save" style="text-decoration: none;color: black;display: flex;justify-content: center;align-items: center;text-decoration: none;color: black;">Cancel</g:link>--}%

%{--                --}%%{--                <button type="button" class="save" >cancel</button>--}%
%{--            </div>--}%

%{--            --}%%{--                <g:link controller="employee" action="save_and_show">save and show</g:link>--}%
%{--        </div>--}%

%{--    </div>--}%

%{--    <input type="submit" name="submit" value="create"/>--}%
</g:form>
%{--<script>--}%
%{--    var optionList=[]--}%

%{--    function add(){--}%
%{--        // var e=window.document.getElementById("addNew");--}%
%{--        // e.style.display = "block";--}%
%{--        var type=document.getElementById("type").value;--}%
%{--        var phone=document.getElementById("phone").value;--}%
%{--        var email=document.getElementById("email").value;--}%
%{--        console.log("type : " + type)--}%
%{--        console.log("phone : " + phone)--}%
%{--        console.log("email : " + email)--}%
%{--        if(type!=""){--}%
%{--            var recordInfo = type+"_"+phone+"_"+email--}%
%{--            var key = recordInfo;--}%
%{--            console.log(key);--}%
%{--            var result = optionList.indexOf(key);--}%
%{--            if(result == -1){--}%
%{--                optionList.push(key) ;--}%
%{--                var vType = "<td>" + type + "<input type='hidden' name='valueOptionData' value='" + recordInfo  + "'></td>" ;--}%
%{--                var vPhone =`<td>`+phone+`</td>`;--}%
%{--                var vEmail=`<td>`+email+`</td>`;--}%
%{--                var delAction = "<td><button value='" + recordInfo  + "' onclick='deleteRow(this);return false;'>DEL</button></td>" ;--}%
%{--                var tbody=document.getElementById("contactTable");--}%
%{--                tbody.innerHTML+=`<tr>`+vType+vPhone+vEmail+delAction+`</tr>`;--}%
%{--                document.getElementById("type").value ="";--}%
%{--                document.getElementById("phone").value="";--}%
%{--                document.getElementById("email").value="";--}%
%{--            }--}%
%{--        }--}%
%{--    }--}%
%{--    var certList=[]--}%

%{--    function addCert(){--}%
%{--        var certTypeId=document.getElementById("certype").value;--}%
%{--        var certtype=document.getElementById("certype");--}%
%{--        var text = certtype.options[certtype.selectedIndex].text;--}%
%{--        var description=document.getElementById("description").value;--}%
%{--        console.log("certtype : " + certtype)--}%
%{--        console.log("description : " + description)--}%
%{--        if(certtype!=""){--}%
%{--            var recordInfo = certTypeId+"_"+description--}%
%{--            var key = recordInfo;--}%
%{--            console.log(key);--}%
%{--            var result = certList.indexOf(key);--}%
%{--            if(result == -1){--}%
%{--                certList.push(key) ;--}%
%{--                var vType = "<td>" + text + "<input type='hidden' class='certificateData' name='certificateData' value='" + recordInfo  + "'></td>" ;--}%
%{--                var vDescription =`<td>`+description+`</td>`;--}%
%{--                var delAction = "<td><button id='delBtn' value='" + recordInfo  + "' onclick='deleteRowcert(this);return false;'>DEL</button></td>" ;--}%
%{--                var tbody=document.getElementById("certificateTable");--}%
%{--                tbody.innerHTML+=`<tr>`+vType+vDescription+delAction+`</tr>`;--}%
%{--                document.getElementById("certype").value ="";--}%
%{--                document.getElementById("description").value="";--}%
%{--            }--}%
%{--        }--}%
%{--    }--}%
%{--    var relateList=[]--}%

%{--    function addRelate(){--}%
%{--        var relateType=document.getElementById("relateType").value;--}%
%{--        var note=document.getElementById("note").value;--}%
%{--        console.log("relateType : " + relateType)--}%
%{--        console.log("note : " + note)--}%
%{--        if(relateType!=""){--}%
%{--            var recordInfo = relateType+"_"+note--}%
%{--            var key = recordInfo;--}%
%{--            console.log(key);--}%
%{--            var result = relateList.indexOf(key);--}%
%{--            if(result == -1){--}%
%{--                relateList.push(key) ;--}%
%{--                var vType = "<td>" + relateType + "<input type='hidden' class='relateData' name='relateData' value='" + recordInfo  + "'></td>" ;--}%
%{--                var vNote =`<td>`+note+`</td>`;--}%
%{--                var delAction = "<td><button id='delBtn' value='" + recordInfo  + "' onclick='deleteRowrelate(this);return false;'>DEL</button></td>" ;--}%
%{--                var tbody=document.getElementById("relateTable");--}%
%{--                tbody.innerHTML+=`<tr>`+vType+vNote+delAction+`</tr>`;--}%
%{--                document.getElementById("relateType").value ="";--}%
%{--                document.getElementById("note").value="";--}%
%{--            }--}%
%{--        }--}%
%{--    }--}%
%{--    function deleteRowrelate(this_){--}%
%{--        certList = arrayRemove(relateList, this_.value);//delete from option list--}%
%{--        this_.closest("tr").remove();//delete from table--}%
%{--    }--}%
%{--    function deleteRowcert(this_){--}%
%{--        console.log("certList "+certList);--}%
%{--        certList = arrayRemove(certList, this_.value);//delete from option list--}%
%{--        this_.closest("tr").remove();//delete from table--}%
%{--    }--}%
%{--    function deleteRow(this_){--}%
%{--        // alert("   1 - "+optionList);--}%
%{--        console.log("optionList "+optionList);--}%

%{--        optionList = arrayRemove(optionList, this_.value);//delete from option list--}%
%{--        this_.closest("tr").remove();//delete from table--}%
%{--        // alert("   2 - "+optionList);--}%
%{--    }--}%


%{--    function arrayRemove(arr, value) {--}%

%{--        var res =  arr.filter(function(ele){--}%
%{--            return ele != value;--}%
%{--        });--}%
%{--        // alert(res);--}%
%{--        return res;--}%
%{--    }--}%
%{--</script>--}%
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

