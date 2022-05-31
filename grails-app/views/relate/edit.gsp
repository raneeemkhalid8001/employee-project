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
<g:form action="save" >
    <div style=" width:50%;height: 50%;box-shadow: 0 1px 4px grey;margin:60px auto;display: flex;justify-content: center;align-items: center">
        <div style="width: 50%;height: 50%;text-align: center;padding-top: 10px">
            <g:hiddenField name="id" value="${relate.id}"></g:hiddenField>
             Note:<input type="text" name="note" style="margin-bottom: 10px" value="${relate.note}"/>
            <br>
            <g:select name="relateType" from="${firstProject.Relate.getConstrainedProperties().relateType.inList}" value="${relate.relateType}"/>
            <br>
            <button type="submit">save</button>
        </div>

    </div>
</g:form>
</body>
</html>