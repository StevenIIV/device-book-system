<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-14
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user/update" method="post">
    <table>
        <tr><td>id:</td><td><input type="text" name="id" readonly="readonly" value="${sessionScope.user.id}"></td></tr>
        <tr><td>username:</td><td><input type="text" name="username" value="${sessionScope.user.username}"></td></tr>
        <tr><td>password:</td><td><input type="password" name="password" value="${sessionScope.user.password}"></td></tr>
        <tr><td>sex:</td><td><input type="text" name="sex" readonly="readonly" value="${sessionScope.user.sex}"></td></tr>
        <tr><td>groups:</td><td><input type="text" name="groups" value="${sessionScope.user.groups}"></td></tr>
        <tr><td>department:</td><td><input type="text" name="department" value="${sessionScope.user.department}"></td></tr>
        <tr><td>authority:</td><td><input type="text" name="authority" readonly="readonly" value="${sessionScope.user.authority}"></td></tr>
        <tr><td>job:</td><td><input type="text" name="job" readonly="readonly" value="${sessionScope.user.job}"></td></tr>
        <tr><td>teleNumber:</td><td><input type="text" name="teleNumber" value="${sessionScope.user.teleNumber}"></td></tr>
        <tr>
            <td><input type="submit" value="修改"></td>
        </tr>
    </table>
</form>
</body>
</html>
