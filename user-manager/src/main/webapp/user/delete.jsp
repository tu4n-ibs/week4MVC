<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 28/09/2023
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>Delete Form</h2>
    <form action="/users-delete" method="post">
        <fieldset style="width: 60px">
            <legend>Delete users</legend>
            <table>
                <tr>
                    <input type="hidden" name="id" value="${list.id}">
                    <td>id:</td>
                    <td><input type="number" name="id" value="${list.id}" disabled></td>
                </tr>
                <tr>
                    <td>name:</td>
                    <td><input type="text" name="name" value="${list.name}" disabled></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td><input type="text" name="email" value="${list.email}" disabled></td>
                </tr>
                <tr>
                    <td>country:</td>
                    <td><input type="text" name="country" value="${list.country}" disabled></td>
                </tr>
                <tr>
                    <input type="submit" value="delete">
                </tr>
            </table>
        </fieldset>
        </table>
    </form>
    <form action="/users">
        <input type="submit" value="back to list users">
    </form>
</div>
</body>
</html>
