<%@ page import="com.eer_system.model.Device" %>
<%@ page import="com.eer_system.dao.DeviceMapper" %>
<%@ page import="javax.annotation.Resource" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/12
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>modfiydevice</title>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <center>
            <form class="am-form am-form-horizontal" action="/modifydevice.do" method="post">
                <fieldset>
                    <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">修改设备</p> </center></legend>
                    <table>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>ID: </label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="deviceid" class="am-form-field" placeholder="${devicetomodify.id}" disabled></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>设备名</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicename" class="" placeholder="${devicetomodify.deviceName}"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>型号</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicetype" class="" placeholder="${devicetomodify.deviceType}"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>品牌</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicebrand" class="" placeholder="${devicetomodify.deviceBrand}"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>使用位置</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicepostion" class="" placeholder="${devicetomodify.postion}"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>管理员</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="adminid" class="" placeholder="${devicetomodify.adminid}"></div>
                            </td>
                        </tr>
                        <tr>
                            <td><center><p><button type="submit" class="am-btn am-btn-default">提交</button></p></center></td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </center>
    </div>
</div>
</body>
</html>