<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-23
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="usernavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="admin-content">
            <div class="admin-content-body">
                <div class="am-cf am-padding am-padding-bottom-0">
                    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">更新个人信息</strong> / <small>Update information</small></div>
                </div>

                <hr/>

                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
                        <div class="am-panel am-panel-default">
                            <div class="am-panel-bd">
                                <div class="am-g">
                                    <div class="am-u-md-4">
                                        <img class="am-img-circle am-img-thumbnail" src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/200/h/200/q/80" alt=""/>
                                    </div>
                                    <div class="am-u-md-8">
                                        <p>你可以使用<a href="#">gravatar.com</a>提供的头像或者使用本地上传头像。 </p>
                                        <form class="am-form">
                                            <div class="am-form-group">
                                                <input type="file" id="user-pic">
                                                <p class="am-form-help">请选择要上传的文件...</p>
                                                <button type="button" class="am-btn am-btn-primary am-btn-xs">保存</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="am-panel am-panel-default">
                            <div class="am-panel-bd">
                                <div class="user-info">
                                    <p>等级信息</p>
                                    <div class="am-progress am-progress-sm">
                                        <div class="am-progress-bar" style="width: 60%"></div>
                                    </div>
                                    <p class="user-info-order">当前等级：<strong>LV8</strong> 活跃天数：<strong>587</strong> 距离下一级别：<strong>160</strong></p>
                                </div>
                                <div class="user-info">
                                    <p>信用信息</p>
                                    <div class="am-progress am-progress-sm">
                                        <div class="am-progress-bar am-progress-bar-success" style="width: 80%"></div>
                                    </div>
                                    <p class="user-info-order">信用等级：正常当前 信用积分：<strong>80</strong></p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                        <form class="am-form am-form-horizontal" action="/user/update" method="post">
                            <div class="am-form-group">
                                <label for="id" class="am-u-sm-3 am-form-label">编号 / Id</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="id" name="id" readonly="readonly" placeholder="编号 / Id" value="${user.id}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="username" class="am-u-sm-3 am-form-label">用户名 / username</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="username" name="username" placeholder="用户名 / username" value="${user.username}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="password" class="am-u-sm-3 am-form-label">密码 / password</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="password" name="password" placeholder="密码 / password" value="${user.password}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="sex" class="am-u-sm-3 am-form-label">性别 / sex</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="sex" name="sex" placeholder="性别 / sex" value="${user.sex}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="groups" class="am-u-sm-3 am-form-label">项目组 / groups</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="groups" name="groups" placeholder="项目组 / groups" value="${user.groups}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="department" class="am-u-sm-3 am-form-label">部门 / department</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="department" readonly="readonly" name="department" placeholder="部门 / department" value="${user.department}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="authority" class="am-u-sm-3 am-form-label">权限 / authority</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="authority" name="authority" readonly="readonly" placeholder="权限 / authority" value="${user.authority}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="job" class="am-u-sm-3 am-form-label">职位 / job</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="job" name="job" readonly="readonly" placeholder="职位 / job" value="${user.job}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="teleNumber" class="am-u-sm-3 am-form-label">电话 / teleNumber</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="teleNumber" name="teleNumber" placeholder="电话 / teleNumber" value="${user.teleNumber}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="submit" class="am-btn am-btn-primary">更改用户信息</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <footer class="admin-content-footer">
                <hr>
                <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
            </footer>
        </div>
    </div>
</body>
</html>
