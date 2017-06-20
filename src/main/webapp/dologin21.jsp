<%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/6/14
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="loginUsers" class="com.po.Users" scope="page" />
<jsp:useBean id="usersDao" class="com.dao.UsersDao" scope="page" />
<jsp:setProperty name="loginUsers" property="*" />

<%
    if (usersDao.usersLogin(loginUsers))
    {
        session.setAttribute("loginUser",loginUsers.getUsername());
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else
    {
        response.sendRedirect("login_failure.jsp");
    }
%>
