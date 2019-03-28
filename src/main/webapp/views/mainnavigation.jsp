<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/22
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-title">列表</div>
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
                <a id="#" href="/user/sys_firstpage" class="nav-link">
                    <i class="am-icon-home"></i>
                    <span>首页</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="users_information" href="/user/getall" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-user-plus"></i>
                    <span>用户信息</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="device" href="/showalldevice_adm" class="nav-link tpl-left-nav-link-list">
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
            <li class="tpl-left-nav-item">
                <a id="log" href="/alllog" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-suitcase"></i>
                    <span>日志</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="data_analysis" href="/bar" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-suitcase"></i>
                    <span>数据分析</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a id="backup" href="" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-suitcase"></i>
                    <span>备份</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a href="#" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-cog"></i>
                    <span>系统设置</span>
                </a>
            </li>
        </ul>
    </div>
</div>