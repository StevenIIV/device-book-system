<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据分析</title>
    <script src="/js/Chart.js"></script>
    <%@include file="jqheader.jsp"%>
</head>
<body datatype="index">
<%@include file="mainheader.jsp"%>
<div class="tpl-page-container tpl-page-header-fixed">
    <%@include file="mainnavigation.jsp"%>
    <div class="tpl-content-wrapper">
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 设备数据统计
                </div>
            </div>
            <canvas id="myChart" ></canvas>
        </div>
    </div>
</div>
<script type="text/javascript">
    var d=[];
    <c:forEach items="${zztname}" var="i">
    d.push('${i}');
    </c:forEach>
    var data = {
        labels: d,
        datasets : [
            {
                label: "设备使用情况",
                fillColor: "rgba(220,220,220,0.5)",
                strokeColor: "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data: ${zztnum}
            }
        ]
    };
    var ctx = document.getElementById("myChart").getContext("2d");
    var myBarChart=new Chart(ctx,{
        type : 'bar',
        data : data,
        configs : {
            scaleOverlay : false,  // 网格线是否在数据线的上面
            scaleOverride : false, // 是否用硬编码重写y轴网格线
            scaleSteps : null, //y轴刻度的个数
            scaleStepWidth : null, //y轴每个刻度的宽度
            scaleStartValue : null,  //y轴的起始值
            scaleLineColor : "rgba(0,0,0,.1)",// x轴y轴的颜色
            scaleLineWidth : 1,// x轴y轴的线宽
            scaleShowLabels : true,// 是否显示y轴的标
            scaleFontFamily : "'Arial'",// 标签的字体
            scaleFontSize : 12,// 标签字体的大小
            scaleFontStyle : "normal",// 标签字体的样式
            scaleFontColor : "#666",// 标签字体的颜色
            scaleShowGridLines : false,// 是否显示网格线
            scaleGridLineColor : "rgba(0,0,0,.05)",    // 网格线的颜色
            scaleGridLineWidth : 1, // 网格线的线宽
            scaleBeginAtZero: true, // y轴标记是否从0开始
            scaleShowHorizontalLines: true, // 是否显示横向线
            scaleShowVerticalLines: true, // 是否显示竖向线
            barShowStroke : true, // 是否显示线
            barStrokeWidth : 2,   // 线宽
            barValueSpacing : 5,// 柱状块与x值所形成的线之间的距离
            barDatasetSpacing : 1,// 在同一x值内的柱状块之间的间距
            animation : true,//是否有动画效果
            animationSteps : 60,//动画的步数
            animationEasing : "easeOutQuart",// 动画的效果
            showTooltips: false, // 是否显示提示
            // 动画完成后调用的函数(每个柱上显示对应的数据)
            onAnimationComplete: function () {
                var ctx = this.chart.ctx;
                ctx.font = this.scale.font;
                ctx.fillStyle = this.scale.textColor;
                ctx.textAlign = 'center';
                ctx.textBaseline = 'bottom';
                this.datasets.forEach(function (dataset){
                    dataset.bars.forEach(function (bar) {
                        ctx.fillText(bar.value, bar.x, bar.y);
                    });
                });
            }
        }
    });
    var ctx1 = document.getElementById("myChart1").getContext("2d");
    var myPieChart=new Chart(ctx1,{
        type : 'pie',
        data : data
    })
</script>
</body>
</html>
