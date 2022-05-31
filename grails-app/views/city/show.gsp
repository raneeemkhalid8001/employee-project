<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 12:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">City Name:</label>
        <p style="display: inline-block;margin-left: 10px">${city.cityName}</p>
    </div>
    <g:link controller="city" action="list">previous</g:link>
</div>
</body>
</html>