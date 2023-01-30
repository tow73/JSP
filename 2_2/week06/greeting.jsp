<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
<style>
* {
	text-algin: center;
}
</style>
</head>
<body>
	<h4>greeting.jsp에서 출력한 메시지입니다.</h4>
	<p><%=request.getParameter("name")%>님 환영합니다.
	<p>오늘은 <%=request.getParameter("date")%>입니다.
</body>
</html>