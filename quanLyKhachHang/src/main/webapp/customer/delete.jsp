<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 20/09/2023
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<style>
    .fl {
        width: 50px;
        margin: 0 auto;
    }
</style>
<body>
<div style="text-align: center">
    <h1>Delete customer</h1>

    <form action="" method="post">
        <h3>Are you sure?</h3>
        <fieldset class="fl">
            <legend>Customer information</legend>
            <table border="1">
                <tr>
                    <td>Name:</td>
                    <td>${requestScope["customer"].getName()}</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>${requestScope["customer"].getEmail()}</td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>${requestScope["customer"].getAddress()}</td>
                </tr>
            </table>
        </fieldset>
    </form>
    <p>
        <td><input type="submit" value="Delete customer"></td>
        <td>
            <button><a href="customers"> Back to customer</a></button>
        </td>
    </p>
</div>
</body>
</html>
