<%--
  Created by IntelliJ IDEA.
  User: ubs
  Date: 4/19/2022
  Time: 10:42 AM
--%>

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
            <th>action</th>
            </thead>
            <tbody id="myTable">
            <g:each in="${allItems}" var="thisItem">
                <tr>
                    <td>${thisItem.itemName}</td>
                    <td>
                        <g:link controller="item" action="deleteRow" id="${thisItem.id}">deleteRow</g:link>
                        <g:link controller="item" action="show" id="${thisItem.id}">show</g:link>
                        <g:link controller="item" action="edit" id="${thisItem.id}">edit</g:link>

                    </td>
                </tr>

            </g:each>
            </tbody>


        </table>
    </div>
    <g:link controller="item" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>

</div>

</body>

</html>
<script>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("txtSearch");
        filter = input.value.toUpperCase();
        table = document.getElementById("tblData");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }


</script>
</body>
</html>