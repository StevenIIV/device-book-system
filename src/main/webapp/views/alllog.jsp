<%@ page import="com.eer_system.model.Log" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/23
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>alllog</title>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components" style="margin-top: 20px">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 日志
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"></th>
                                    <th>ID</th>
                                    <th>设备名称</th>
                                    <th>预约人</th>
                                    <th>使用位置</th>
                                    <th>使用日期</th>
                                    <th>使用时间</th>
                                    <th>预约时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    List<List<Object>> list= (List<List<Object>>) session.getAttribute("loglist");
                                    for(int i=0;i<list.size();i++){
                                %>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <%
                                        for(int j=0;j<=6;j++){
                                    %>
                                    <td><%=list.get(i).get(j)%></td>
                                    <%
                                        }
                                    %>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>

                            <div class="am-cf">
                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>