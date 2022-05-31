<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/20/2022
  Time: 5:01 PM
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
        %{--        <g:render template="tblData" model="[allProducts:allProducts]"/>--}%
        <table id="tblData" border="1" width="100%" height="80%" style="margin-top: 30px;margin-bottom: 27px;text-align: center">
            <thead>
            <th>phone</th>
            <th>email</th>
            <th>type</th>
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${allcontactlist}" var="thiscontactlist">
                <tr>
                    <td>${thiscontactlist.phone}</td>
                    <td>${thiscontactlist.email}</td>
                    <td>${thiscontactlist.type}</td>
                    <td>
                        <g:link controller="contactlist" action="deleteRow" id="${thiscontactlist.id}">deleteRow</g:link>
                        <g:link controller="contactlist" action="show" id="${thiscontactlist.id}">show</g:link>
                        <g:link controller="contactlist" action="edit" id="${thiscontactlist.id}">edit</g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <g:link controller="contactlist" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>

</div>
</body>
</html>