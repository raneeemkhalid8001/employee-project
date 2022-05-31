<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Inventory</title>
</head>

<body>
%{--${product}${sku}--}%
%{--<form>--}%
%{--    Product:<input type="text" size="40" name="product" value="${product}"/>--}%
%{--    Sku:<input type="text" name="sku" value="${sku}"/>--}%
%{--</form>--}%
<g:form action="save" >
    <div style=" width:50%;height: 50%;box-shadow: 0 1px 4px grey;margin:60px auto;display: flex;justify-content: center;align-items: center">
        <div style="width: 50%;height: 50%;text-align: center;padding-top: 10px">
            <g:hiddenField name="id" value="${product.id}"></g:hiddenField>
            Product Name:<input type="text" name="name" style="margin-bottom: 10px" value="${product.name}"/>
            <br>
            Sku:<input type="text" name="sku" style="margin-bottom: 10px;margin-left: 25px" value="${product.sku}"/>
            <br>
            price:<input type="text" name="price" style="margin-bottom: 10px;margin-left: 18px" value="${product.price}"/>
            <br>
            item:<g:select name="items" from="${item}" optionKey="id" optionValue="itemName" value="${product?.item?.id}" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            <br>
            prop:<g:select name="propss" multiple="" from="${props}" optionKey="id" optionValue="name" value="" style="margin-bottom: 10px; width: 45%; margin-left: 21px"/>
            <br>
            <button type="submit">save</button>
            %{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
            %{--<g:link controller="inventory" action="save" style="text-align: center;padding: 5px 20px;color: white;background-color: grey;margin: 20px auto;margin-left: 40px;border-radius: 10px;text-decoration: none">save</g:link>--}%
        </div>

    </div>
%{--    <input type="submit" name="submit" value="create"/>--}%
</g:form>
</body>
</html>