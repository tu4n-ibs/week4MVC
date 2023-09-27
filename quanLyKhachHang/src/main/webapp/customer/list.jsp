<%--
  Created by IntelliJ IDEA.
  User: tuan
  Date: 20/09/2023
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
</head>
<style>
    .fl{
        width: 50px;
        margin: 0 auto;
    }
</style>
<body>
<div style="text-align: center">
    <h1>Customers</h1>

    <fieldset class="fl">
        <legend>Customers</legend>
        <table border="1" style="margin: 0 auto">
            <tr>
                <td>Name</td>
                <td>Email</td>
                <td>Address</td>
                <td>Edit</td>
                <td>Delete</td>
                <td>Detail</td>
            </tr>
            <c:forEach items='${requestScope["customers"]}' var="customer">
                <tr>
                    <td>${customer.getName()}</td>
                    <td>${customer.getEmail()}</td>
                    <td>${customer.getAddress()}</td>
                    <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
                    <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
                    <td><a href="/customers?action=view&id=${customer.getId()}">detail</a></td>
                </tr>
            </c:forEach>
        </table>
    </fieldset>
    <p>
        <button><a href="/customers?action=create">Create new customer</a></button>
    </p>
</div>
</body>
</html>
