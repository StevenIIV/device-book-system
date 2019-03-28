<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/24
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-title">列表</div>
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
                <a id="#" href="/user/ord_firstpage" class="nav-link">
                    <i class="am-icon-home"></i>
                    <span>首页</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="device" href="/showalldevice_user" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-line-chart"></i>
                    <span>设备</span>
                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="project" href="/project/getall" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-suitcase"></i>
                    <span>项目</span>
                </a>
            </li>
        </ul>
    </div>
</div>