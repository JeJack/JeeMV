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
    <title>登录成功</title>
</head>
<body>
<%
    String loginUser="";
    if (session.getAttribute("loginUser")!=null)
    {
        loginUser=session.getAttribute("loginUser").toString();
    }
%>
<h1>欢迎  <font style="color: red"><%=loginUser%></font>，登录成功!!!</h1>
</body>
</html>
