<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="/js/Chart.js"></script>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="usernavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>一些常用模块</small></div>
            </div>
            <div class="am-g">
                <div class="am-u-md-6">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-hd am-cf am-collapsed" data-am-collapse="{target: '#collapse-panel-4'}">个人预约情况<span class="am-icon-chevron-down am-fr"></span></div>
                        <div id="collapse-panel-4" class="am-panel-bd am-collapse am-in" style="">
                            <ul class="am-list admin-content-task">
                                <%
                                    List<List<Object>> list= (List<List<Object>>) session.getAttribute("rentlist");
                                    for(int i=0;i<list.size();i++){
                                %>
                                <li>
                                    <div class="admin-task-meta"> Posted on <%=list.get(i).get(4)%> by ${user.username}</div>
                                    <div class="admin-task-bd">
                                        <p>预约设备：<%=list.get(i).get(0)%></p>
                                        <p>预约时间：<%=list.get(i).get(1)%> <%=list.get(i).get(2)%></p>
                                        <p>使用位置：<%=list.get(i).get(3)%></p>
                                    </div>
                                    <div class="am-cf">
                                        <div class="am-btn-toolbar am-fl">
                                            <div class="am-btn-group am-btn-group-xs">
                                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-check"></span></button>
                                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
                                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
                                            </div>
                                        </div>
                                        <div class="am-fr">
                                            <button type="button" class="am-btn am-btn-default am-btn-xs">删除</button>
                                        </div>
                                    </div>
                                </li>
                                <%
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="am-u-md-6">
                    <div class="am-panel am-panel-default">
                        <div class="am-panel-hd am-cf am-collapsed" data-am-collapse="{target: '#collapse-panel-3'}">最近留言<span class="am-icon-chevron-down am-fr"></span></div>
                        <div class="am-panel-bd am-cf am-collapse am-in" id="collapse-panel-3" style="">
                            <ul class="am-comments-list admin-content-comment">
                                <li class="am-comment">
                                    <a href="#"><img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96" alt="" class="am-comment-avatar" width="48" height="48"></a>
                                    <div class="am-comment-main">
                                        <header class="am-comment-hd">
                                            <div class="am-comment-meta"><a href="#" class="am-comment-author">Boss</a> 评论于 <time>2019-1-12 15:30</time></div>
                                        </header>
                                        <div class="am-comment-bd"><p>每个差距（ GAP）背后必定要有人负责，每个好的表现背后也一定有人在那儿。请随时 随地能够公开透明地指出任何人的位置；</p>
                                        </div>
                                    </div>
                                </li>

                                <li class="am-comment">
                                    <a href="#"><img src="http://s.amazeui.org/media/i/demos/bw-2014-06-19.jpg?imageView/1/w/96/h/96" alt="" class="am-comment-avatar" width="48" height="48"></a>
                                    <div class="am-comment-main">
                                        <header class="am-comment-hd">
                                            <div class="am-comment-meta"><a href="#" class="am-comment-author">Boss</a> 评论于 <time>2019-1-12 15:30</time></div>
                                        </header>
                                        <div class="am-comment-bd"><p>沟通的速度就是业绩的速度，而负责沟通的正式我们这一群领导层，请担负起沟通的全 责。沟通有五个标准：主动沟通，及时沟通，有效沟通，准确沟通以及重要事情的书面化沟 通</p>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                            <ul class="am-pagination am-fr admin-content-pagination">
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
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
