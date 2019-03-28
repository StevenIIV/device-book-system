<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <title>test</title>
    <style type="text/css">
        .box {
            display: none;
            height: auto;
            background:#FFFFDF;
            border: 1px solid #333;
            padding: 12px;
            text-align: left;
            position: absolute;
        }

    </style>
    <script>

        function boxdisplay(id) {
            document.getElementById(id).style.display = "block";
        }
        function boxdisappear(id) {
            document.getElementById(id).style.display = "none";
        }
        window.onload=function () {
            var name="steven";
            document.getElementById("d4").onmouseover=function(){
                document.getElementById("box").innerText=name;
                boxdisplay('box')
            };
            document.getElementById("d4").onmouseout=function () {
                boxdisappear('box');
            };
        }
    </script>
</head>

<body>
<table>
    <tr>
        <td>
            <div id="d4" style="width: 40px; height: 30px; background: rgb(255, 48, 48);">hello</div>
        </td>
    </tr>
</table>
<div id="boxlist">
    <div id="box"class="box" ></div>
</div>

</body>

</html>