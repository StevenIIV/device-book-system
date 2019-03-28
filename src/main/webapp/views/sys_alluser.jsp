<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-12
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户信息</title>
    <%@include file="jqheader.jsp"%>
    <script type="text/javascript">
        function update(id, username, password, sex, groups, department, authority, job, teleNumber){
            document.forms[0].elements[0].value = id;
            document.forms[0].elements[1].value = username;
            document.forms[0].elements[2].value = password;
            document.forms[0].elements[3].value = sex;
            document.forms[0].elements[4].value = groups;
            document.forms[0].elements[5].value = department;
            document.forms[0].elements[6].value = authority;
            document.forms[0].elements[7].value = job;
            document.forms[0].elements[8].value = teleNumber;
            document.forms[0].action = '<c:url value="/user/sys_updateuser"/>';
            document.forms[0].submit();
        }
        function delect(id) {
            document.forms[0].elements[0].value = id;
            document.forms[0].action = '<c:url value="/user/delete"/>';
            document.forms[0].submit();
        }
    </script>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components" style="margin-top: 20px">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 用户信息
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <a href="/user/sys_insert"><button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="/user/delete">
                            <input type="hidden" name="id">
                            <input type="hidden" name="username">
                            <input type="hidden" name="password">
                            <input type="hidden" name="sex">
                            <input type="hidden" name="groups">
                            <input type="hidden" name="department">
                            <input type="hidden" name="authority">
                            <input type="hidden" name="job">
                            <input type="hidden" name="teleNumber">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>用户名</th>
                                    <th>密码</th>
                                    <th>性别</th>
                                    <th>项目组</th>
                                    <th>部门</th>
                                    <th>权限</th>
                                    <th>工作</th>
                                    <th>电话</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${userlist}" var = "p">
                                <tr><td>${p.id}</td>
                                    <td>${p.username}</td>
                                    <td>${p.password}</td>
                                    <td>${p.sex}</td>
                                    <td>${p.groups}</td>
                                    <td>${p.department}</td>
                                    <td>${p.authority}</td>
                                    <td>${p.job}</td>
                                    <td>${p.teleNumber}</td>
                                    <td><a href="javascript:void(0)" onclick="update('${p.id}','${p.username}','${p.password}','${p.sex}','${p.groups}','${p.department}','${p.authority}','${p.job}','${p.teleNumber}');">修改</a></td>
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