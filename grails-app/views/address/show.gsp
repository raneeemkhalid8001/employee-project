
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">city:</label>
        <p style="margin-left: 10px">${address?.city?.cityName}</p>
        <br>
        <label style="margin-right: 10px">country:</label>
        <p style="margin-left: 10px">${address?.country?.countryName}</p>
        <br>
        <label style="margin-right: 10px">governorate is:</label>
        <p style="margin-left: 10px">${address?.governorate?.governorateName}</p>
    </div>
    <g:link controller="address" action="list">previous</g:link>
</div>
</body>
</html>