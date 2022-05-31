
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 70%;height: 50%;margin: 30px auto;box-shadow: 0 1px 4px grey;padding: 50px 35px;text-align: center">

    <g:textField id="txtSearch" onkeyup="myFunction()" name="txtSearch" class="input-xxlarge" placeholder="Search" />
    <button id="btn" onclick="search()">Search</button>
    <div id="tblDataDiv">
        %{--        <g:render template="tblData" model="[allProducts:allProducts]"/>--}%
        <table id="tblData" border="1" width="100%" height="80%" style="margin-top: 30px;margin-bottom: 27px;text-align: center">
            <thead>
            <th>name</th>
            <th>size</th>
            <th>color</th>
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${allProp}" var="thisProp">
                <tr>
                    <td>${thisProp.name}</td>
                    <td>${thisProp.size}</td>
                    <td>${thisProp.color}</td>
                    <td>
                        <g:link controller="prop" action="deleteRow" id="${thisProp.id}">deleteRow</g:link>
                        <g:link controller="prop" action="show" id="${thisProp.id}">show</g:link>
                        <g:link controller="prop" action="edit" id="${thisProp.id}">edit</g:link>

                    </td>


                </tr>

            </g:each>
            </tbody>


        </table>
    </div>
    <g:link controller="prop" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>

</div>
</body>
</html>