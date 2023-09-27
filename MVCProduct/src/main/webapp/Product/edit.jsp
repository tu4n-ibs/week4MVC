<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 26/09/2023
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products-edit" method="post">
    <fieldset style="width: 60px">
        <legend>Edit Product</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td><input type="number" name="id" value="${list.id}"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" value="${list.name}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" value="${list.price}"></td>
            </tr>
            <tr>
                <td>Describe</td>
                <td><input type="text" name="describe"  value="${list.describe}"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input type="text" name="producer" value="${list.producer}"></td>
            </tr>
            <tr>
                <input type="submit" value="edit">
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
