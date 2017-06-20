<%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/6/14
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册信息</title>
</head>
<body>
<%
    String registerInfo="";
    if (session.getAttribute("Info")!=null)
    {
        registerInfo=session.getAttribute("Info").toString();
    }
%>
<h1>欢迎  <font style="color: red"><%=registerInfo%></font>!!!</h1>

<div>
    <a href="login.jsp">返回登录界面</a>
    <a href="register.jsp">返回注册界面</a>
</div>

</body>
</html>
