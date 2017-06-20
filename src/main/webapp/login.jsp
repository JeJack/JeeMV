<%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/6/14
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录注册界面</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div id="login">
    <form class="loginform"  name="loginFram" action="dologin21.jsp" method="post">
        <p>登录</p>
        <div id="loginUP">
            <table>
                <tr>
                    <td>用户名:</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>密码:</td>
                    <td><input type="password" name="password" /> </td>
                </tr>
            </table>
        </div>

        <div id="loginsubmit">
            <input type="submit" value="登录" style="width: 100px" />
            <a href="register.jsp"><input type="button" value="注册" style="width: 100px" /></a>
        </div>
    </form>
</div>

</body>
</html>
