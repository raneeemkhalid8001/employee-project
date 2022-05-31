<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
%{--<g:render template="kioskForm"/>--}%
%{--${allProducts.name}${allProducts.sku}${allProducts.price}--}%
%{--        <g:<g:each in="" >
<g:link action="show" id="${thisProduct.id}">${thisProduct.name}</g:link>

</g:each>
--}%
%{--    <g:textField name="text"></g:textField>--}%
%{--    <g:link controller="inventory" action="search">search</g:link>--}%
%{--<input id="myInput" type="text" placeholder="Search..">--}%
%{--<input list="city" name="name" id="name"/>--}%
%{--<datalist id="city">--}%
%{--    <option value="nablus"></option>--}%
%{--    <option value="jenin"></option>--}%
%{--    <option value="jericho"></option>--}%
%{--    <option value="tullkarm"></option>--}%
%{--    <option value="ramallah"></option>--}%
%{--</datalist>--}%

<div style="width: 70%;height: 50%;margin: 30px auto;box-shadow: 0 1px 4px grey;padding: 50px 35px;text-align: center">

%{--    <g:textField id="txtSearch" onkeyup="myFunction()" name="txtSearch" class="input-xxlarge" placeholder="Search" />--}%
    <g:textField id="txtSearch"  name="txtSearch" class="input-xxlarge" placeholder="Search" />
    <button id="btn" onclick="search()">Search</button>
    <div id="tblDataDiv">
    <g:render template="tblData" model="[allProducts:allProducts]"/>
    </div>
    <g:link controller="inventory" action="create" style="border-radius: 15px;text-decoration: none;background-color: black;color: white;padding: 10px 20px" >create</g:link>

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
    function search(){
        var txtSearch =$("#txtSearch").val();
        $.ajax({
            url: '${createLink(controller: 'inventory',action: 'search')}',
            dataType:"html",
            data:{txtSearch :txtSearch} ,
            type: 'post',
            success:function (data){//the result that came from search function that exist in controller
                $('#tblDataDiv').html(data);
            },error:function (json){

                alert("error");
            }
        });
    }
</script>