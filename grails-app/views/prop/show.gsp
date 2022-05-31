
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">Prop Name:</label>
        <p style="display: inline-block;margin-left: 10px">${prop.name}</p>
    </div>
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">Prop Size:</label>
        <p style="display: inline-block;margin-left: 10px">${prop.size}</p>
    </div>
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">Prop color:</label>
        <p style="display: inline-block;margin-left: 10px">${prop.color}</p>
    </div>
    <g:link controller="prop" action="list">previous</g:link>

</div>
</body>
</html>