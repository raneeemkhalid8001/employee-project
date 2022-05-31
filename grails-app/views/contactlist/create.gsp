<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/20/2022
  Time: 5:01 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form action="save">
    <div style=" width:50%;height: 50%;box-shadow: 0 1px 4px grey;margin:60px auto;display: flex;justify-content: center;align-items: center">
        <div style="width: 50%;height: 50%;text-align: center;padding-top: 10px">
            phone:  <input type="text" name="phone" style="margin-bottom: 10px"/>
            <br>
            email: <input type="text" name="email" style="margin-bottom: 10px"/>
            <br>
             <br>
            <g:select name="type" from="${firstProject?.ContactType?.values()}" required=""/>
            <button type="submit">save</button>
        </div>

    </div>
</g:form>
</body>
</html>