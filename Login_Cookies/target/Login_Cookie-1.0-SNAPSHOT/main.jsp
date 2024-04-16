<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
</head>
<body>
<h1>主页面 - 欢迎 <%= session.getAttribute("currentUser") %> !</h1>

<!-- 登出链接 -->
<a href="logout.jsp">登出</a>
</body>
</html>
</jsp>