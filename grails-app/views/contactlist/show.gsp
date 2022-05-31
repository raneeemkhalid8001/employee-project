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
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">phone:</label>
        <p style="display: inline-block;margin-left: 10px">${contactlist.phone}</p>
        <br>
        <label style="margin-right: 10px">email:</label>
        <p style="display: inline-block;margin-left: 10px">${contactlist.email}</p>
        <br>
        <label style="margin-right: 10px">type:</label>
        <p style="display: inline-block;margin-left: 10px">${contactlist.type}</p>
    </div>
    <g:link controller="contactlist" action="list">previous</g:link>
</div>
</body>
</html>