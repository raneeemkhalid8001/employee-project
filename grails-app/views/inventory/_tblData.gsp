<table id="tblData" border="1" width="100%" height="80%" style="margin-top: 30px;margin-bottom: 27px;text-align: center">
    <thead>
    <th>name</th>
    <th>sku</th>
    <th>price</th>
    <th>item</th>
    <th>propName</th>
    <th>action</th>
    </thead>
    <tbody id="myTable">
    <g:each in="${allProducts}" var="thisProduct">
        <tr>
            <td>${thisProduct.name}</td>
            <td>${thisProduct.sku}</td>
            <td>${thisProduct.price}</td>
            <td>${thisProduct?.item?.itemName}</td>

%{--            <td>${thisProduct?.props?.name}</td>--}%
            <td><g:link controller="prop" action="show" id="${thisProduct?.props?.id?.toString()?.replace('[','')?.replace(']','')}">${thisProduct?.props?.name?.toString()?.replace('[','')?.replace(']','')}</g:link></td>

            <td>
                <g:link controller="inventory" action="deleteRow" id="${thisProduct.id}">deleteRow</g:link>
                <g:link controller="inventory" action="show" id="${thisProduct.id}">show</g:link>
                <g:link controller="inventory" action="edit" id="${thisProduct.id}">edit</g:link>

            </td>


        </tr>

    </g:each>
    </tbody>


    %{--    <g:each in="${allProducts}">--}%
    %{--        <tr>--}%
    %{--            <td>${it.name}</td>--}%
    %{--            <td>${it.sku}</td>--}%
    %{--            <td>${it.price}</td>--}%
    %{--        </tr>--}%

    %{--    </g:each>--}%

</table>