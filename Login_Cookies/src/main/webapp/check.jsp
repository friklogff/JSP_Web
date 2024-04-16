<%@ page language="java" import="java.util.*,javax.servlet.http.*" isErrorPage="true"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // 这里是模拟校验过程，实际应用中需要连接数据库进行查询比对
    String correctUsername = "admin";
    String correctPassword = "password";

    if (username.equals(correctUsername) && password.equals(correctPassword)) {
        session.setAttribute("currentUser", username);
        response.sendRedirect("success.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>
