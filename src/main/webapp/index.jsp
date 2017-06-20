<%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/6/14
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <!-- 包含头部信息用于适应不同设备 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">

</head>

<body>
<script src="js/index.js"></script>
<script>
    var countS=1;
    setInterval("countS=autoChange(countS)","5000");
</script>
<div id="mainOV">
    <div id="back_nav">
        <img src="images/morning.jpg" width="50px" height="50px"/>
        <div id="navigationF">
            <ur id="nav">
                <li><a href="http://www.bilibili.com/">首页</a></li>
                <li><a href="#">发现</a></li>
                <li><a href="login.jsp">登录</a></li>
                <li><a href="#">会员</a></li>
                <li><a href="#">我的</a></li>
            </ur>
        </div>
    </div>
    <div id="homeshow">
        <div id="introduce_classify">
            <ur id="nav2">
                <li><a href="#">动作</a></li>
                <li><a href="#">喜剧</a></li>
                <li><a href="#">情感</a></li>
                <li><a href="#">武打动作</a></li>
            </ur>
        </div>

    </div>
    <div id="showImg">
        <img id="myimage" onclick="button1()" src="images/valley.jpg" width="100%" height="580">
        <div id="showImgBlock">
            <button type="button" onClick="button1()"></button>
            <button type="button" onClick="button2()"></button>
            <button type="button" onClick="button3()"></button>
        </div>
    </div>


    <div id="showCom">
        <p>云图标: <a href="http://www.bilibili.com/"> <span class="glyphicon glyphicon-cloud"></span></a></p>
        <p>下载图标： <a href="http://www.baidu.com/"><span class="glyphicon glyphicon-download"></span></a></p>
        12456
    </div>
</div>
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://apps.bdimg.com/libs/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>
