<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-11
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
        <tr class="text-c odd" role="row">
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td><a href="/user/nor_modifyuser">修改信息</a></td>
        </tr>
</table>
</body>
</html>
