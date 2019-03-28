<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/3/15
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript" src="/js/jquery.js"></script>
<head>
    <title>deviceappointment</title>
    <%@include file="jqheader.jsp"%>
    <style type="text/css">
        .box {
            display: none;
            width: auto;
            height: auto;
            background:#FFFFDF;
            border: 1px solid #333;
            padding: 12px;
            text-align: left;
            position: absolute;
        }
        #bg {
            width: 100%;
            height: 100%;
            background-color: #000;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 2;
            opacity: 0.3;
            /*兼容IE8及以下版本浏览器*/
        //filter: alpha(opacity=30);
            display: none;
        }
        #formbox {
            width: 250px;
            height: 220px;
            background-color: aliceblue;
            margin: auto;
            position: absolute;
            z-index: 3;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            display: none;
        }
    </style>
    <script>
        function appo_click(d) {
            if(document.getElementById('d'+d).innerText){
                    alert("非法操作");
            }
            else{
                showform(d);
            }
        }
        function boxdisplay(id) {
                document.getElementById(id).style.display = "block";
            }
        function boxdisappear(id) {
                document.getElementById(id).style.display = "none";
            }
        window.onload=function () {
            var nowday=new Date();
            for(var i=1;i<=7;i++){
                var n = nowday.getTime() + i * 24 * 60 * 60 * 1000;
                var result = new Date(n);
                document.getElementById("day"+i).innerText=(result.getMonth() + 1) + "-" + result.getDate();
            }
            for(var i=1;i<=14;i++){
                document.getElementById("d"+i).style.background="#7CCD7C";
                document.getElementById("box"+i).innerText="可预约";
            }
            $.ajax({
                type:"POST",
                url:"/showdeviceapp",
                success:function (result) {
                    var arr=[];
                    for(var item in result){
                        arr.push(result[item]);
                    }
                    for(var i=0;i<arr.length;i++){
                        var appo_day=new Date(arr[i].appoDay);
                        var now=new Date();
                        var days=appo_day.getDate()-now.getDate()+1;
                        var time=arr[i].appoTime;
                        if(days<0) days+=31;
                        var pos=parseInt(days)+parseInt(days)+parseInt(time)-1;
                        var name=arr[i].userName;
                        document.getElementById("d"+pos).innerText="已预约";
                        document.getElementById("d"+pos).style.background="#FF3030";
                        document.getElementById("box"+pos).innerText="预约人："+name;
                    }
                }
            })
        }
        function showform(id) {
            $.ajax({
                type:"POST",
                url:"/appointment?d="+id,
                success:function (result) {
                    document.getElementById("appointtime").innerText=result;
                    open();
                }
            })
        }
        function open() {
            var s = document.getElementById("bg");
            s.style.display = "block";

            var l = document.getElementById("formbox");
            l.style.display = "block";
        }
        function close() {
            var s = document.getElementById("bg");
            s.style.display = "none";

            var l = document.getElementById("formbox");
            l.style.display = "none";
        }
    </script>
</head>
<body>
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div id="show">
            <div id="showtable" style="margin-top:50px;width: 65%;float: left">
                <legend><center><p style="font-family: '华文仿宋';font-weight: bold; font-size: 25px">预约表</p> </center></legend>
                <center>
                    <table border="1px">
                        <tr>
                            <td></td>
                            <td><div id="day1"></div></td>
                            <td><div id="day2"></div></td>
                            <td><div id="day3"></div></td>
                            <td><div id="day4"></div></td>
                            <td><div id="day5"></div></td>
                            <td><div id="day6"></div></td>
                            <td><div id="day7"></div></td>
                        </tr>
                        <tr>
                            <td>上午</td>
                            <td><div id="d1" style="width: 60px;height: 40px" onclick="appo_click(1)" onmouseover="boxdisplay('box1')" onmouseout="boxdisappear('box1')"></div></td>
                            <td><div id="d3" style="width: 60px;height: 40px" onclick="appo_click(3)" onmouseover="boxdisplay('box3')" onmouseout="boxdisappear('box3')"></div></td>
                            <td><div id="d5" style="width: 60px;height: 40px" onclick="appo_click(5)" onmouseover="boxdisplay('box5')" onmouseout="boxdisappear('box5')"></div></td>
                            <td><div id="d7" style="width: 60px;height: 40px" onclick="appo_click(7)" onmouseover="boxdisplay('box7')" onmouseout="boxdisappear('box7')"></div></td>
                            <td><div id="d9" style="width: 60px;height: 40px" onclick="appo_click(9)" onmouseover="boxdisplay('box9')" onmouseout="boxdisappear('box9')"></div></td>
                            <td><div id="d11" style="width: 60px;height: 40px" onclick="appo_click(11)" onmouseover="boxdisplay('box11')" onmouseout="boxdisappear('box11')"></div></td>
                            <td><div id="d13" style="width: 60px;height: 40px" onclick="appo_click(13)" onmouseover="boxdisplay('box13')" onmouseout="boxdisappear('box13')"></div></td>
                        </tr>
                        <tr>
                            <td>下午</td>
                            <td><div id="d2" style="width: 60px;height: 40px" onclick="appo_click(2)" onmouseover="boxdisplay('box2')" onmouseout="boxdisappear('box2')"></div></td>
                            <td><div id="d4" style="width: 60px;height: 40px" onclick="appo_click(4)" onmouseover="boxdisplay('box4')" onmouseout="boxdisappear('box4')"></div></td>
                            <td><div id="d6" style="width: 60px;height: 40px" onclick="appo_click(6)" onmouseover="boxdisplay('box6')" onmouseout="boxdisappear('box6')"></div></td>
                            <td><div id="d8" style="width: 60px;height: 40px" onclick="appo_click(8)" onmouseover="boxdisplay('box8')" onmouseout="boxdisappear('box8')"></div></td>
                            <td><div id="d10" style="width: 60px;height: 40px" onclick="appo_click(10)" onmouseover="boxdisplay('box10')" onmouseout="boxdisappear('box10')"></div></td>
                            <td><div id="d12" style="width: 60px;height: 40px" onclick="appo_click(12)" onmouseover="boxdisplay('box12')" onmouseout="boxdisappear('box12')"></div></td>
                            <td><div id="d14" style="width: 60px;height: 40px" onclick="appo_click(14)" onmouseover="boxdisplay('box14')" onmouseout="boxdisappear('box14')"></div></td>
                        </tr>
                    </table>
                </center>
            </div>
            <div id="noticeboard" style="width:35%;float: left">
                <div class="am-panel am-panel-default admin-sidebar-panel">
                    <div class="am-panel-bd">
                        <p><span class="am-icon-bookmark"></span>  预约规则</p>
                        <p>1.每人每次只能预约1天，且只能提前1天预约，即只能预约一周内</p>
                        <p>2.使用仪器的同学需在登记本上做好登记。</p>
                        <p>3.禁止非工作时间随意进入中心使用仪器。</p>
                        <p>4.凡使用仪器未进行登记者，接受相关处罚。</p>
                        <p>5.使用仪器后未关闭仪器且未收拾干净者，接受相关处罚。</p>
                        <p>6.禁止非工作时间随意进入中心使用仪器。</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="box1"class="box" style="display: none"></div>
        <div id="box2"class="box"></div>
        <div id="box3"class="box"></div>
        <div id="box4"class="box"></div>
        <div id="box5"class="box"></div>
        <div id="box6"class="box"></div>
        <div id="box7"class="box"></div>
        <div id="box8"class="box"></div>
        <div id="box9"class="box"></div>
        <div id="box10"class="box"></div>
        <div id="box11"class="box"></div>
        <div id="box12"class="box"></div>
        <div id="box13"class="box"></div>
        <div id="box14"class="box"></div>
        <!--<a href="javascript:open()">登录</a>-->
        <div id="bg"></div>
        <div id="formbox">
            <a href="javascript:close()">关闭</a>
            <form action="/appointmentconfirm.do?id=${chosendevice.id}" method="post">
                <center>
                    <table border="1px">
                        <tr>
                            <td colspan="2"><center>确认单</center></td>
                        </tr>
                        <tr>
                            <td>设备名：</td>
                            <td>${chosendevice.deviceName}</td>
                        </tr>
                        <tr>
                            <td>预约时间：</td>
                            <td><div id="appointtime"></div></td>
                        </tr>
                        <tr>
                            <td>预约人：</td>
                            <td>${user.username}</td>
                        </tr>
                        <tr>
                            <td>使用位置</td>
                            <td><input type="text" name="postion"></td>
                        </tr>
                        <tr>
                            <td colspan="2"><center><input type="submit" value="预约"></center></td>
                        </tr>
                    </table>
                </center>
            </form>
        </div>
    </div>
</div>
</body>
</html>
