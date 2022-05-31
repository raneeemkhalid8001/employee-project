<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/21/2022
  Time: 1:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="save" >
    <div style=" width:50%;height: 50%;box-shadow: 0 1px 4px grey;margin:60px auto;display: flex;justify-content: center;align-items: center">
        <div style="width: 50%;height: 50%;text-align: center;padding-top: 10px">
            <g:hiddenField name="id" value="${address.id}"></g:hiddenField>
            city:<g:select name="cities" from="${lockup.City.list()}" optionKey="id" optionValue="cityName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            <br>
            country:<g:select name="countries" from="${lockup.Country.list()}" optionKey="id" optionValue="countryName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            <br>
            governorate:<g:select name="governorates" from="${lockup.Governorate.list()}" optionKey="id" optionValue="governorateName" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            <br>
            <button type="submit">save</button>
        </div>
    </div>
</g:form>
</body>
</html>