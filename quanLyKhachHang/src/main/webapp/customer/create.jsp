<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 20/09/2023
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new customer</title>
</head>
<style>
    .message {
        color: green;
    }
    .fl{
        width: 50px;
        margin: 0 auto;
    }
</style>
</head>
<body>
<div style="text-align: center">
    <h1>Create new customer</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <form method="post">
        <fieldset class="fl">
            <legend>Customer information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" id="name" placeholder="input name..."></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" id="email" placeholder="input email..."></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" id="address" placeholder="input address..."></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Create customer"></td>
                </tr>
            </table>
        </fieldset>
    </form>
    <p>
        <button><a href="customers">Back to customer list</a></button>
    </p>
</div>
</body>
</html>
