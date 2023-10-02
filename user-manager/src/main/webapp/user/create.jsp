<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 28/09/2023
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h2>Create Form</h2>
    <form action="/users-create" method="post">
        <fieldset style="width: 50px">
            <legend>Create New Users</legend>
            <table border="1px">
                <tr>
                    <td>name:</td>
                    <td><input type="text" name="name" placeholder="input name..."></td>
                </tr>
                <tr>
                    <td>email:</td>
                    <td><input type="text" name="email" placeholder="input email..."></td>
                </tr>
                <tr>
                    <td>country:</td>
                    <td><input type="text" name="country" placeholder="input country..."></td>
                </tr>
                <tr>
                    <input type="submit" value="create">
                </tr>
            </table>
        </fieldset>
    </form>
    <form action="/users">
        <input type="submit" value="back to list users">
    </form>
</div>
</body>
</html>
