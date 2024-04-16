<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    session.invalidate(); // 清除session中的信息
    response.sendRedirect("login.jsp"); // 重定向回登录页面
%>
