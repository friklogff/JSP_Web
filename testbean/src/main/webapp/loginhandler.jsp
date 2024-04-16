<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.example.testbean.Login" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Handler Page</title>
</head>
<body>
<%
    Login login = new Login();
    login.setUsername(request.getParameter("username"));
    login.setPassword(request.getParameter("password"));
%>
<h1>Username: <%= login.getUsername() %></h1>
<h2>Password: <%= login.getPassword() %></h2>
</body>
</html>
