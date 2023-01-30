<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>printing</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8");
	session.setAttribute("id", request.getParameter("id"));%>
	<ddwutag:greeting id="id" color="pink" />
	<ddwutag:greeting id="id" color="green" />
</body>
</html>