<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019-03-17
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新项目</title>
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
                    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">更新项目</strong> / <small>update information</small></div>
                </div>

                <hr/>

                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                    </div>
                    <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                        <form class="am-form am-form-horizontal" action="/project/insert" method="post">
                            <div class="am-form-group">
                                <label for="id" class="am-u-sm-3 am-form-label">编号 / Id</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="id" name="id" placeholder="编号 / Id" value="${param.id}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="name" class="am-u-sm-3 am-form-label">项目名 / name</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="name" name="name" placeholder="项目组 / name" value="${param.name}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="status" class="am-u-sm-3 am-form-label">状态 / status</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="status" name="status" placeholder="状态 / status" value="${param.status}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="device" class="am-u-sm-3 am-form-label">设备 / device</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="device" name="device" placeholder="设备 / device" value="${param.device}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="description" class="am-u-sm-3 am-form-label">项目描述 / description</label>
                                <div class="am-u-sm-9">
                                    <input type="text" id="description" name="description" placeholder="项目描述 / description" value="${param.description}">
                                </div>
                            </div>
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <button type="submit" class="am-btn am-btn-primary">更新项目</button>
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
