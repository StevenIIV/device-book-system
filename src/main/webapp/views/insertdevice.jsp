<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/11
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>insertdevice</title>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <center>
            <form class="am-form am-form-horizontal" action="/insertdevice.do" method="post">
                <fieldset>
                    <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">新增设备</p> </center></legend>
                    <table>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>设备名</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicename"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>型号</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicetype"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>品牌</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicebrand"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>使用位置</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="devicepostion"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div style="float:left;height: 37px;width: 65px; line-height: 37px;text-align: center;"><label>管理员</label></div>
                                <div style="float:left; margin-left: 20px"><input type="text" name="adminid"></div>
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