<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 1:16 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">Governorate Name:</label>
        <p style="display: inline-block;margin-left: 10px">${governorate.governorateName}</p>
    </div>
    <g:link controller="governorate" action="list">previous</g:link>
</div>
</body>
</html>