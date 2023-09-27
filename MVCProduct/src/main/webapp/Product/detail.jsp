<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 26/09/2023
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/products-detail" method="post">
    <fieldset style="width: 50px">
        <legend>Information</legend>
        <table border="1" style="margin: 0 auto">
            <th>id</th>
            <th>name</th>
            <th>price</th>
            <th>describe</th>
            <th>producer</th>
            <tr>
                <td>${list.id}</td>
                <td>${list.name}</td>
                <td>${list.price}</td>
                <td>${list.describe}</td>
                <td>${list.producer}</td>
            </tr>
        </table>
        <tr>
            <form action="/products-detail" method="get">
                <button><a href="/products">back</a></button>
            </form>
        </tr>
    </fieldset>
</form>
</body>
</html>
