<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 2:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <style>

    </style>
</head>

<body>
<div style="width: 90%;margin: 30px auto;box-shadow: 0 1px 4px grey;padding: 50px 35px;text-align: center">
    <g:if test="${flash.message}">
         <div class="alert alert-success"  role="alert">${flash.message}
        </div>
    </g:if>
    <g:textField id="txtSearch"  name="txtSearch" class="input-xxlarge" placeholder="Search" />
    <button id="btn" onclick="search()">Search</button>
    <div id="tblDataDiv">
        <table id="tblData" border="1" width="100%" style="margin-top: 30px;margin-bottom: 27px;text-align: center">
            <thead>
            <th>First name</th>
            <th>Employment Date</th>
            <th>City name</th>
            <th>Governorate name</th>
%{--            <th>type contact</th>--}%
%{--            <th>phone</th>--}%
%{--            <th>email</th>--}%
%{--            <th>certificate</th>--}%
%{--            <th>relate</th>--}%
%{--            <th>positions</th>--}%
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${allEmployees}" var="thisEmployee">
                <tr>
                    <td style="padding: 10px">${thisEmployee.firstName}</td>
                    <td style="padding: 10px">${g.formatDate(date:thisEmployee.beginingDate,format:'yyyy-MM-dd')}</td>
                    <td style="padding: 10px">${thisEmployee?.address?.city?.cityName}</td>
                    <td style="padding: 10px">${thisEmployee?.address?.governorate?.governorateName}</td>
%{--                    <td>${thisEmployee?.contactlist?.type.toString()?.replace('[','')?.replace(']','')}</td>--}%
%{--                    <td><g:link controller="prop" action="show" id="${thisProduct?.props?.id?.toString()?.replace('[','')?.replace(']','')}">${thisProduct?.props?.name?.toString()?.replace('[','')?.replace(']','')}</g:link></td>--}%
%{--                    <td>${thisEmployee?.contactlist?.phone.toString()?.replace('[','')?.replace(']','')}</td>--}%
%{--                    <td>${thisEmployee?.contactlist?.email.toString()?.replace('[','')?.replace(']','')}</td>--}%
%{--                    <td>${thisEmployee?.certificate?.type.name.toString()?.replace('[','')?.replace(']','')}</td>--}%
%{--                    <td>${thisEmployee?.relate?.relateType.toString()?.replace('[','')?.replace(']','')}</td>--}%
                    %{--  <td><g:link controller="prop" action="show" id="${thisProduct?.props?.id?.toString()?.replace('[','')?.replace(']','')}">${thisProduct?.props?.name?.toString()?.replace('[','')?.replace(']','')}</g:link></td>--}%
%{--                    <td>${thisEmployee?.skillsEmployees?.skills?.skillName.toString()?.replace('[','')?.replace(']','')}</td>--}%
%{--                    <td><g:link controller="skills" action="show" id="${thisEmployee?.skillsEmployees?.skills?.id?.toString()?.replace('[','')?.replace(']','')}">${thisEmployee?.skillsEmployees?.skills?.skillName.toString()?.replace('[','')?.replace(']','')}</g:link></td>--}%
%{--                    <td>${thisEmployee?.positionEmployees?.position?.positionName.toString()?.replace('[','')?.replace(']','')}</td>--}%
                <td style="padding: 10px">
                    %{--<td>${thisProduct?.props?.name}</td>--}%
%{--                    <td><g:link controller="prop" action="show" id="${thisProduct?.props?.id?.toString()?.replace('[','')?.replace(']','')}">${thisProduct?.props?.name?.toString()?.replace('[','')?.replace(']','')}</g:link></td><td>--}%
                        <g:link controller="employee" action="deleteRow" id="${thisEmployee.id}"><i class="fa-solid fa-trash-can" style="background-color: #f0f5f5;font-size: 12px; padding: 7px;border-radius: 5px;margin-right: 7px;color: black"></i></g:link>
                        <g:link controller="employee" action="show" id="${thisEmployee.id?.toString().replace('[','')?.replace(']','')}"><i class="fa-solid fa-eye" style="background-color: #f0f5f5;font-size: 12px; padding: 7px;border-radius: 5px;margin-right: 7px;color: black"></i></g:link>
                        <g:link controller="employee" action="edit" id="${thisEmployee.id}"><i class="fa-solid fa-pen-to-square" style="background-color: #f0f5f5;font-size: 12px; padding: 7px;border-radius: 5px;margin-right: 7px;color: black"></i></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>

        </table>
    </div>
    <g:link controller="employee" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>

</div>

</body>
</html>