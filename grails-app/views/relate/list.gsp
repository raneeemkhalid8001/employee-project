<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 10:30 AM
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
            <th>relateType</th>
            <th>note</th>
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${relate}" var="thisrelate">
                <tr>
                    <td>${thisrelate.relateType}</td>
                    <td>${thisrelate.note}</td>
                    <td>
                        <g:link controller="relate" action="deleteRow" id="${thisrelate.id}">deleteRow</g:link>
                        <g:link controller="relate" action="show" id="${thisrelate.id}">show</g:link>
                        <g:link controller="relate" action="edit" id="${thisrelate.id}">edit</g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <g:link controller="relate" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>
</div>
</body>
</html>