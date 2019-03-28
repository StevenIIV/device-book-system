<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/11
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showalldevice</title>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="usernavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div id="box" class="tpl-portlet-components">
            <div class="am-g">
                <div>
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs" >
                            <select id="mySelect" v-model="sl">
                                <option value="名称">名称</option>
                                <option value="编号">编号</option>
                                <option value="品牌">品牌</option>
                                <option value="型号">型号</option>
                                <option value="名称">使用位置</option>
                            </select>
                            <input type="text" v-model="searchval" placeholder="请输入"><button>搜索</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th>设备ID</th>
                                    <th>设备名称</th>
                                    <th>设备型号</th>
                                    <th>设备品牌</th>
                                    <th>使用位置</th>
                                    <th>状态</th>
                                    <th>管理员</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="it in list">
                                    <td>{{it.id}}</td>
                                    <td>{{it.deviceName}}</td>
                                    <td>{{it.deviceType}}</td>
                                    <td>{{it.deviceBrand}}</td>
                                    <td>{{it.postion}}</td>
                                    <td>{{it.status}}</td>
                                    <td>{{it.adminid}}</td>
                                    <td>
                                        <div style="float: left; margin-left: 5px"><button class="am-btn am-btn-success am-btn-xs am-text-danger am-hide-sm-only"><a v-bind:href="'/deviceappointment?id='+it.id+''">appointment</a></button></div>
                                    </td>

                                </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var d=[];
    <c:forEach items="${devicelist}" var="i">
    var e={};
    e.id = '${i.id}';
    e.deviceName = '${i.deviceName}';
    e.deviceType = '${i.deviceType}';
    e.deviceBrand = '${i.deviceBrand}';
    e.postion = '${i.postion}';
    e.status = '${i.status}';
    e.adminid = '${i.adminid}';
    d.push(e);
    </c:forEach>
</script>
<script>
    var myVueTest = new Vue({
        el:'#box',
        data(){
            return {
                devicelist: d,
                searchval: '',
                sl: '名称'
            };
        },
        created : function(){

        },
        computed:{
            list : function () {
                var _this=this;
                var arrByZM=[];
                if(this.sl=="名称"){
                    for(var i=0;i<this.devicelist.length;i++){
                        if(this.devicelist[i].deviceName.search(this.searchval)!=-1){
                            arrByZM.push(this.devicelist[i]);
                        }
                    }
                }
                else if(this.sl=="编号"){
                    for(var i=0;i<this.devicelist.length;i++){
                        if(this.devicelist[i].id.search(this.searchval)!=-1){
                            arrByZM.push(this.devicelist[i]);
                        }
                    }
                }
                else if(this.sl=="品牌"){
                    for(var i=0;i<this.devicelist.length;i++){
                        if(this.devicelist[i].deviceBrand.search(this.searchval)!=-1){
                            arrByZM.push(this.devicelist[i]);
                        }
                    }
                }
                else if(this.sl=="型号"){
                    for(var i=0;i<this.devicelist.length;i++){
                        if(this.devicelist[i].deviceType.search(this.searchval)!=-1){
                            arrByZM.push(this.devicelist[i]);
                        }
                    }
                }
                else if(this.sl=="使用位置"){
                    for(var i=0;i<this.devicelist.length;i++){
                        if(this.devicelist[i].postion.search(this.searchval)!=-1){
                            arrByZM.push(this.devicelist[i]);
                        }
                    }
                }
                return arrByZM;
            }
        }
    });
</script>
</body>
</html>