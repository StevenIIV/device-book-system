<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-17
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>项目信息</title>
    <%@include file="jqheader.jsp"%>
    <script type="text/javascript">
        function update(id, name, status, device, description){
            document.forms[0].elements[0].value = id;
            document.forms[0].elements[1].value = name;
            document.forms[0].elements[2].value = status;
            document.forms[0].elements[3].value = device;
            document.forms[0].elements[4].value = description;
            document.forms[0].action = '<c:url value="/project/projectmodify_user"/>';
            document.forms[0].submit();
        }
        function delect(id) {
            document.forms[0].elements[0].value = id;
            document.forms[0].action = '<c:url value="/project/delete"/>';
            document.forms[0].submit();
        }
    </script>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="usernavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components" style="margin-top: 20px">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 项目信息
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <a href="/project/projectinsert_user"><button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="/user/delete">
                            <input type="hidden" name="id">
                            <input type="hidden" name="name">
                            <input type="hidden" name="status">
                            <input type="hidden" name="device">
                            <input type="hidden" name="description">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>项目名</th>
                                    <th>项目状态</th>
                                    <th>使用设备</th>
                                    <th>项目描述</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${projectlist}" var = "p">
                                    <tr><td>${p.id}</td>
                                        <td>${p.name}</td>
                                        <td>${p.status}</td>
                                        <td>${p.device}</td>
                                        <td>${p.description}</td>
                                        <td><a href="javascript:void(0)" onclick="update('${p.id}','${p.name}','${p.status}','${p.device}','${p.description}');">修改</a></td>
                                        <td><a href="javascript:void(0)" onclick="delect('${p.id}');">删除</a> </td>
                                    </tr>
                                </c:forEach>
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
            <div class="tpl-alert"></div>
        </div>
    </div>
</div>
</body>
</html>