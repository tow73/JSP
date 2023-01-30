<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<%@ page import = "java.util.Enumeration" %>
<h2>전달된 파라미터 이름들</h2>
<%
Enumeration<String> e = request.getParameterNames();
while(e.hasMoreElements()){
	String s = e.nextElement();
	out.println(s + "<br>");
}
%>
<br>
<p>타입: <%= request.getParameter("type") %>
<p>아이디: <%= request.getParameter("strID") %>
<p>패스워드: <%= request.getParameter("strPwd") %>
</body>
</html>