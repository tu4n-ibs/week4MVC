<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 25/09/2023
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products-create" method="post">
<fieldset style="width: 60px">
    <legend>Create Product</legend>
    <table>
        <tr>
            <td>ID: </td>
            <td><input type="number" name="id" id="id" placeholder="input id..."></td>
        </tr>
        <tr>
            <td>Name: </td>
            <td><input type="text" name="name" id="name" placeholder="input name..."></td>
        </tr>
        <tr>
            <td>Price: </td>
            <td><input type="text" name="price" id="price" placeholder="input price..."></td>
        </tr>
        <tr>
            <td>Describe</td>
            <td><input type="text" name="describe" id="describe" placeholder="input describe... "></td>
        </tr>
        <tr>
            <td>Producer:</td>
            <td><input type="text" name="producer" id="producer" placeholder="input producer..."></td>
        </tr>
        <tr>
            <input type="submit" value="create">
        </tr>
    </table>
</fieldset>
</form>
</body>
</html>
