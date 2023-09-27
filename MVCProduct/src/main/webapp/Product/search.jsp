<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 26/09/2023
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/products-search" method="get">
        <input type="text" name="q">
        <input type="submit" value="Search">
    </form>
    <form action="/products">
        <button>Back</button>
    </form>
    <table border="1">
        <th>id</th>
        <th>name</th>
        <th>price</th>
        <th>describe</th>
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
</body>
</html>
