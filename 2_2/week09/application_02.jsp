<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_02</title>
</head>
<body>
	<%
	session.setAttribute("username", "username");
	session.setAttribute("time","time");
	int interval = Integer.parseInt(String.valueOf(request.getParameter("time")));
	session.setMaxInactiveInterval(interval * 60);
	%>
	<%=request.getParameter("username")%>님 환영합니다.<br><br>
	세션 ID : <%=session.getId()%><br>
	세션 지속시간 : <%=session.getMaxInactiveInterval()%>초<br><br>
	<%
	Integer count = (Integer)application.getAttribute("count");
	if(count == null)
		count = 0;
	else
		count++;
	application.setAttribute("count", count);
	%>
	오늘의 접속자수: <%=count%><br>
</body>
</html>