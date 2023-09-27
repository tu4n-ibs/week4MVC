<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 26/09/2023
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products-delete" method="post">
  <fieldset style="width: 60px">
    <legend>Delete Product</legend>
    <table>
      <tr>
        <input type="hidden" name="id" value="${list.id}">
        <td>ID: </td>
        <td><input type="number" name="id" value="${list.id}" disabled></td>
      </tr>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" value="${list.name}" disabled></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="text" name="price" value="${list.price}" disabled></td>
      </tr>
      <tr>
        <td>Describe</td>
        <td><input type="text" name="describe"  value="${list.describe}" disabled></td>
      </tr>
      <tr>
        <td>Producer:</td>
        <td><input type="text" name="producer" value="${list.producer}" disabled></td>
      </tr>
      <tr>
        <input type="submit" value="delete">
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
