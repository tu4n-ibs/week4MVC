<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 28/09/2023
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>Edit Form</h2>
    <form action="/users-edit" method="post">
        <fieldset style="width: 60px">
            <legend>Edit Users</legend>
            <table>
                <tr>
                    <td>id:</td>
                    <td><input type="number" name="id" value="${list.id}"></td>
                </tr>
                <tr>
                    <td>name:</td>
                    <td><input type="text" name="name" value="${list.name}"></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td><input type="text" name="email" value="${list.email}"></td>
                </tr>
                <tr>
                    <td>country:</td>
                    <td><input type="text" name="country" value="${list.country}"></td>
                </tr>
                <tr>
                    <input type="submit" value="edit">
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
