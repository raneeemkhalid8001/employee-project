
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div style="width: 50%;height: 50%;margin: auto;box-shadow: 0px 1px 4px grey;text-align: center">
    <div style="margin-top: 60px">
        <label style="margin-right: 10px">product Name:</label>
        <p style="display: inline-block;margin-left: 10px">${product.name}</p>
    </div>
    <div>
        <label style="margin-right: 10px">Sku:</label>
        <p style="display: inline-block;margin-left: 10px">${product.sku}</p>
    </div>
   <div>
       <label style="margin-right: 10px">price:</label>
       <p style="display: inline-block;margin-left: 10px">${product.price}</p>
       <br>
       <label style="margin-right: 10px">Item:</label>
       <p style="margin-left: 10px">${product?.item?.itemName}</p>
       <br>
       <label style="margin-right: 10px">Prop:</label>
       <p style="margin-left: 10px">${product?.props?.name}</p>
   </div>
    <g:link controller="inventory" action="list">previous</g:link>
</div>
%{--${product}${sku}${price}--}%
</body>
</html>