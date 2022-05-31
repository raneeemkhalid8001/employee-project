
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="save" >
    <div style=" width:50%;height: 50%;box-shadow: 0 1px 4px grey;margin:60px auto;display: flex;justify-content: center;align-items: center">
        <div style="width: 50%;height: 50%;text-align: center;padding-top: 10px">
            <g:hiddenField name="id" value="${item.id}"></g:hiddenField>
            item Name:<input type="text" name="itemName" style="margin-bottom: 10px" value="${item.itemName}"/>
            <br>
            <button type="submit">save</button>
        </div>
    </div>
</g:form>
</body>
</html>