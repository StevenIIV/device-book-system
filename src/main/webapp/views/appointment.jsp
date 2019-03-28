<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/17
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>appointment</title>
</head>
<body>
<form action="/appointmentconfirm.do?id=${chosendevice.id}" method="post">
    <center>
        <table border="1px">
            <tr>
                <td colspan="2"><center>确认单</center></td>
            </tr>
            <tr>
                <td>设备名：</td>
                <td>${chosendevice.deviceName}</td>
            </tr>
            <tr>
                <td>预约时间：</td>
                <td>${appodate}&nbsp;${appotime}</td>
            </tr>
            <tr>
                <td>预约人：</td>
                <td>${user.username}</td>
            </tr>
            <tr>
                <td colspan="2"><center><input type="submit" value="预约"></center></td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>
