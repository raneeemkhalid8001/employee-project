<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/20/2022
  Time: 3:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">Skill Name:</label>
        <p style="display: inline-block;margin-left: 10px">${skill?.skillName?.toString()?.replace('[','')?.replace(']','')}</p>
    </div>
    <g:link controller="skills" action="list">previous</g:link>
</div>
</body>
</html>