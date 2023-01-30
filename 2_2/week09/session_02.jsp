<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_02</title>
</head>
<body>
	<%
	session.setAttribute("username", "username");
	%>
	<%=request.getParameter("username")%>님 환영합니다.<br><br>
	세션 ID : <%=session.getId()%><br>
	세션 지속시간(default) : <%=session.getMaxInactiveInterval()%><br><br>
	<a href="./session_03.jsp">session_03.jsp로 가기</a>
</body>
</html>