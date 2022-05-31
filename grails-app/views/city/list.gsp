<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 12:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 70%;height: 50%;margin: 30px auto;box-shadow: 0 1px 4px grey;padding: 50px 35px;text-align: center">
    <g:textField id="txtSearch" onkeyup="myFunction()" name="txtSearch" class="input-xxlarge" placeholder="Search" />
    <button id="btn" onclick="search()">Search</button>
    <div id="tblDataDiv">
        <table id="tblData" border="1" width="100%" height="80%" style="margin-top: 30px;margin-bottom: 27px;text-align: center">
            <thead>
            <th>cityName</th>
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${allCity}" var="thisCity">
                <tr>
                    <td>${thisCity.cityName}</td>
                    <td>
                        <g:link controller="city" action="deleteRow" id="${thisCity.id}">deleteRow</g:link>
                        <g:link controller="city" action="show" id="${thisCity.id}">show</g:link>
                        <g:link controller="city" action="edit" id="${thisCity.id}">edit</g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <g:link controller="city" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>
</div>
</body>
</html>