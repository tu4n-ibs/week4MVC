<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 25/09/2023
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>List Product</h1>
<button><a href="/products-create">create product</a></button>
<br>
<form action="/products-search" method="get">
    <input type="text" name="q" placeholder="input...">
    <input type="submit" value="search">
</form>
<fieldset style="width: 50px">
    <legend>Customers</legend>
    <table border="1" style="margin: 0 auto">
        <th>id</th>
        <th>name</th>
        <th>describe</th>
        <th>price</th>
        <th>producer</th>
        <c:forEach items='${requestScope["list"]}' var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.name}</td>
                <td>${list.price}</td>
                <td>${list.describe}</td>
                <td>${list.producer}</td>
                <td>
                    <form action="/products-edit" method="get">
                        <input type="hidden" name="id" value="${list.id}">
                        <input type="submit" value="edit">
                    </form>
                </td>
                <td>
                    <form action="/products-delete" method="get">
                        <input type="hidden" name="id" value="${list.id}">
                        <input type="submit" value="delete">
                    </form>
                </td>
                <td>
                    <form action="/products-detail" method="get">
                        <input type="hidden" name="id" value="${list.id}">
                        <input type="submit" value="detail">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</fieldset>
</body>
</html>
