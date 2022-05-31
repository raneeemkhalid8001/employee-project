<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/20/2022
  Time: 3:43 PM
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
            <g:hiddenField name="id" value="${certificate.id}"></g:hiddenField>
            certificate type:<input type="text" name="type" style="margin-bottom: 10px" value="${certificate.type.name}"/>
            <br>
            certificate description:<input type="text" name="description" style="margin-bottom: 10px" value="${certificate.description}"/>
            <br>
            <button type="submit">save</button>
        </div>

    </div>
</g:form>
</body>
</html>