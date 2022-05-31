<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/19/2022
  Time: 2:58 PM
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
            <g:hiddenField name="id" value="${prop.id}"></g:hiddenField>
            prop Name:<input type="text" name="name" style="margin-bottom: 10px" value="${prop.name}"/>
            <br>
            prop Size:<input type="text" name="size" style="margin-bottom: 10px" value="${prop.size}"/>
            <br>
            prop Name:<input type="text" name="color" style="margin-bottom: 10px" value="${prop.color}"/>
            <br>
            <button type="submit">save</button>
        </div>

    </div>
</g:form>
</body>
</html>