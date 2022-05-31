<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 2:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
    .tbody tr:nth-child(even) {
        background-color:#f0f5f5;
    }
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
        height: 100px;
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
%{--
                    <td>${thisEmployee?.skillsEmployees?.id}</td>
                    <td>${thisEmployee?.positionEmployees?.id}</td>--}%
<body>
<div style=" width:50%;box-shadow: 0 1px 4px grey;margin:10px auto">
    <div style="padding: 30px 0">
        <div class="info">
            <label>First Name: </label><input type="text" name="firstName" value="${employee?.firstName}" placeholder="firstName" required="required"/>
            <label>Last Name: </label><input type="text" name="lastName" value="${employee?.lastName}" placeholder="lastName" />
            <label>birthday: </label><input type="date" value="${g.formatDate(date:employee?.birthday,format:'yyyy-MM-dd')}" name="birthday"/>
            <label>Employment Date: </label><input type="date" value="${g.formatDate(date:employee?.beginingDate,format:'yyyy-MM-dd')}" name="beginingDate"/>
        </div>
        <h3 style="text-align: center;margin: 5px">your address is: </h3>
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--                    <g:each in="${address}" var="it">--}%
%{--                        <li style="margin-bottom: 7px"><g:link controller="address" action="show" id="${it?.id}">address</g:link></li>--}%
%{--                    </g:each>--}%
%{--                </ul>--}%
        <div class="addressdiv">
            <div class="address">
                <label>City:</label>
                <g:select class="select"  name="city" from="${lockup.City?.list()}" optionKey="id" optionValue="cityName" value="${employee?.address?.city?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
                <label>Country:</label><g:select class="select" name="country" from="${lockup.Country.list()}" optionKey="id" optionValue="countryName" value="${employee?.address?.country?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
                <label>Governorate:</label><g:select class="select" name="governorate" from="${lockup.Governorate.list()}" optionKey="id" optionValue="governorateName" value="${employee?.address?.governorate?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            </div>
        </div>
        <h3 style="text-align: center;margin: 5px">your position:</h3>
%{--                <ul style="text-align: left;margin-left: 320px">--}%
%{--                    <g:each in="${position}" var="it">--}%
%{--                        <li style="margin-bottom: 7px"><g:link controller="position" action="show" id="${it?.id}">${it?.positionName}</g:link></li>--}%
%{--                    </g:each>--}%
%{--                </ul>--}%

        <section class="sectionSkills">
            <div class="skillstable">
                <table>
                    <thead>
                    <th>position:</th>
                    </thead>
                    <tbody>
                    <g:each in="${position}" var="thisEmployeeposition">
                        <tr>
                            <td>${thisEmployeeposition?.positionName}</td>
                        </tr>
                    </g:each>                    </tbody>
                </table>
            </div>
        </section>
        <h3 class="h3" style="text-align: center;margin: 5px">Your contact</h3>
%{--        <label style="margin-right: 10px">your contactList:</label>--}%
    %{--        <ul style="text-align: left;margin-left: 320px">--}%
    %{--            <g:each in="${contactlist}" var="it">--}%
    %{--                <li style="margin-bottom: 7px"><g:link controller="contactlist" action="show" id="${it?.id}">contactlist</g:link></li>--}%
    %{--            </g:each>--}%
    %{--        </ul>--}%
    %{--        --}%%{--  <label style="margin-right: 10px">Type of contactList:</label>--}%
    %{--        <p style="margin-left: 10px">${employee?.contactlist?.type}</p>--}%
    %{--        <br>--}%
    %{--        <label style="margin-right: 10px">phone:</label>--}%
    %{--        <p style="margin-left: 10px">${employee?.contactlist?.phone}</p>--}%
    %{--        <br>--}%
    %{--        <label style="margin-right: 10px">email:</label>--}%
    %{--        <p style="margin-left: 10px">${employee?.contactlist?.email}</p>--}%
    %{--        <br>--}%
        <section class="contactSection">
            <div  class="divtable">
                <table  class="table">
                    <thead>
                    <tr>
                        <th>Type</th>
                        <th>Phone</th>
                        <th>Email</th>
                    </tr>

                    </thead>
                    <tbody class="tbody" id="contactTable">
                    <g:each in="${employee.contactlist}" var="thisEmployeecontact">
                        <tr>
                            <td>${thisEmployeecontact?.type}</td>
                            <td>${thisEmployeecontact?.phone}</td>
                            <td>${thisEmployeecontact?.email}</td>
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
                    </tr>
                    </thead>
                    <tbody class="tbody" id="certificateTable">
                    <g:each in="${employee.certificate}" var="thisEmployecertificate">
                        <tr>
                            <td>${thisEmployecertificate?.type?.name}</td>
                            <td>${thisEmployecertificate?.description}</td>
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
                    </tr>
                    </thead>
                    <tbody class="tbody" id="relateTable">
                    <g:each in="${employee.relate}" var="thisEmployeecontact">
                        <tr>
                            <td>${thisEmployeecontact?.relateType}</td>
                            <td>${thisEmployeecontact?.note}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </section>
        <h3 style="text-align: center;margin: 5px">your skills:</h3>
%{--                    <ul style="text-align: left;margin-left: 320px">--}%
%{--                    <g:each in="${skills}" var="it">--}%
%{--                            <li style="margin-bottom: 7px"><g:link controller="skills" action="show" id="${it?.id}">${it?.skillName}</g:link></li>--}%
%{--                        <li style="margin-bottom: 7px"><g:link controller="skills" action="show" id="${it?.id}">${it?.skillName}</g:link></li>--}%
%{--                    </g:each>--}%
%{--                    </ul>--}%
        <section class="sectionSkills">
            <div class="skillstable">
                <table>
                    <thead>
                    <th>skills</th>
                    </thead>
                    <tbody>
                    <g:each in="${skills}" var="thisEmployeeskill">
                        <tr>
                            <td>${thisEmployeeskill?.skillName}</td>
                        </tr>
                    </g:each>                    </tbody>
                </table>
            </div>
        </section>
        <div class="button">
            <g:link controller="employee" action="list" class="save" style="text-decoration: none;color: black;display: flex;justify-content: center;align-items: center;text-decoration: none;color: black;">Cancel</g:link>
        </div>
    </div>
</div>
%{--<div style="width: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">--}%
%{--    <div style="margin-top: 60px">--}%
%{--        <label style="margin-right: 10px">First Name:</label>--}%
%{--        <p style="display: inline-block;margin-left: 10px">${employee.firstName}</p>--}%
%{--    </div>--}%
%{--    <div>--}%
%{--        <label style="margin-right: 10px">Last Name:</label>--}%
%{--        <p style="display: inline-block;margin-left: 10px">${employee.lastName}</p>--}%
%{--    </div>--}%
%{--    <div>--}%
%{--        birthday:<input type="date" name="birthday" value="${g.formatDate(date:employee.birthday,format:'yyyy-MM-dd')}" style="margin-bottom: 10px;margin-left: 18px"/>--}%
%{--        <br>--}%
%{--        BeginingDate:<input type="date" name="beginingDate" value="${g.formatDate(date:employee.beginingDate,format:'yyyy-MM-dd')}" style="margin-bottom: 10px;margin-left: 18px"/>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">Birthday:</label>--}%
%{--        <p style="display: inline-block;margin-left: 10px">${employee.birthday}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">Beginning Of Date:</label>--}%
%{--        <p style="margin-left: 10px">${employee.beginingDate}</p>--}%
%{--        <p style="margin-left: 10px">${employee?.item?.itemName}</p>--}%
%{--        <label style="margin-right: 10px">your address:</label>--}%
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${address}" var="it">--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="address" action="show" id="${it?.id}">address</g:link></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">City name:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.address?.city?.cityName}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">Governorate name:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.address?.governorate?.governorateName}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">Beginning Of Date:</label>--}%
%{--        <p style="margin-left: 10px">${employee.beginingDate}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">your contactList:</label>--}%
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${contactlist}" var="it">--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="contactlist" action="show" id="${it?.id}">contactlist</g:link></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--        --}%%{--  <label style="margin-right: 10px">Type of contactList:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.contactlist?.type}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">phone:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.contactlist?.phone}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">email:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.contactlist?.email}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">certificate Type:</label>--}%
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${certificate}" var="it">--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="certificate" action="show" id="${it?.id}">${it?.type.name}</g:link></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--        <label style="margin-right: 10px">certificate Type:</label>--}%
%{--        <p style="margin-left: 10px">${employee?.certificate?.type}</p>--}%
%{--        <br>--}%
%{--        <h3>your Relates:</h3>--}%
%{--        <label style="margin-right: 10px">relate Type:</label>--}%
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${relate}" var="it">--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="relate" action="show" id="${it?.id}">${it?.relateType}</g:link></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--        <p style="margin-left: 10px">${employee?.relate?.relateType.toString().replace('[','').replace(']','')}</p>--}%
%{--        <br>--}%
%{--        <label style="margin-right: 10px">your positions:</label>--}%
%{--        <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${position}" var="it">--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="position" action="show" id="${it?.id}">${it?.positionName}</g:link></li>--}%
%{--            </g:each>--}%
%{--        </ul>--}%
%{--        <p style="margin-left: 10px">${employee?.positionEmployees?.position?.positionName}</p>--}%
%{--        <br>--}%
%{--            <label style="margin-right: 10px">your skills:</label>--}%
%{--            <ul style="text-align: left;margin-left: 320px">--}%
%{--            <g:each in="${skills}" var="it">--}%
%{--                    <li style="margin-bottom: 7px"><g:link controller="skills" action="show" id="${it?.id}">${it?.skillName}</g:link></li>--}%
%{--                <li style="margin-bottom: 7px"><g:link controller="skills" action="show" id="${it?.id}">${it?.skillName}</g:link></li>--}%
%{--            </g:each>--}%
%{--            </ul>--}%


%{--    </div>--}%
%{--    <g:link controller="employee" action="list">previous</g:link>--}%
%{--</div>--}%
</body>
</html>