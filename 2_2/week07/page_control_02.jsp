<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_02</title>
</head>
<body>
	<jsp:forward page="page_control_04.jsp">
		<jsp:param name="src" value="page_control_02.jsp" />
	</jsp:forward>
</body>
</html>