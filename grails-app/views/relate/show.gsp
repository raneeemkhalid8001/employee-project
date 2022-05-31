<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 10:31 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">relate Type:</label>
        <p style="display: inline-block;margin-left: 10px">${relate.relateType}</p>
        <br>
        <label style="margin-right: 10px">Note:</label>
        <p style="display: inline-block;margin-left: 10px">${relate.note}</p>
    </div>
    <g:link controller="relate" action="list">previous</g:link>

</div>
</body>
</html>