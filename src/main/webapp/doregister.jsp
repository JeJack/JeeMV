<%--
  Created by IntelliJ IDEA.
  User: qiuje
  Date: 2017/6/18
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="userCreate" class="com.po.Users" scope="page" />
<jsp:useBean id="usersDao" class="com.dao.UsersDao" scope="page" />
<jsp:setProperty name="userCreate" property="*" />
<%
    if (null==userCreate.getUsername()||userCreate.getUsername().length()<=0
            ||null==userCreate.getPassword()||userCreate.getPassword().length()<=0
            ||null==userCreate.getPhonenumber()||userCreate.getPhonenumber().length()<=0){
        session.setAttribute("Info","注册失败，有必填字段为空，请重试.JSP");
        request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
    }else{
        String  recheck = usersDao.usersCreate(userCreate);
        if (null!=recheck&&recheck.length()>0){
            if ("rename".equals(recheck))
            {
                session.setAttribute("Info","用户名已存在，请重新输入一个用户名22");
                request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
            }
            else if ("success".equals(recheck))
            {
                session.setAttribute("Info","注册成功，请登录");
                request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
            }else if ("cc".equals(recheck)){
                session.setAttribute("Info","注册失败，请重试");
                request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
            }
            else if ("dd".equals(recheck)){
                session.setAttribute("Info","注册失败，有必填字段为空，请重试");
                request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
            }else if ("weizhi".equals(recheck)){
                session.setAttribute("Info","判断未知");
                request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
            }
        }
        else{
            session.setAttribute("Info","未知错误，请重试");
            request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
        }
    }
%>
