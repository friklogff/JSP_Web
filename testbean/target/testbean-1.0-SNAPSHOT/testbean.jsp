<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.example.testbean.Person" %>
<%@ taglib uri="/WEB-INF/lib/tlds/mytags.tld" prefix="mytags" %>
<!DOCTYPE html>
<html>
<head>
    <title>TestBean Page</title>
</head>
<body>
<%
    Person person = new Person();
    person.setName("John Doe");
    person.setAge(25);
%>
<h1>Name: <%= person.getName() %></h1>
<h2>Age: <%= person.getAge() %></h2>
<mytags:logo />
</body>
</html>
