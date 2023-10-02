<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 28/09/2023
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>List Form</h2>
    <form action="/users-create">
        <input type="submit" value="create user">
    </form>
    <form action="/users-search">
        <input type="text" name="search" placeholder="input...">
        <input type="submit" value="search">
    </form>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="user" items="${list}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
               <td>
                   <form action="/users-delete" method="get">
                       <input type="hidden" name="id" value="${user.id}">
                       <input type="submit" value="delete">
                   </form>
               </td>
                <td>
                    <form action="/users-edit">
                        <input type="hidden" name="id" value="${user.id}">
                        <input type="submit" value="edit">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
