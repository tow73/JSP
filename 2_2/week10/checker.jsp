<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
<title>checker</title>
</head>
<%
	request.setCharacterEncoding("UTF-8");
	String action = request.getParameter("action");
	if(action.equals("login")){
		String user = request.getParameter("user");
		String passwd = request.getParameter("passwd");
		if(user != null && passwd.equals("hatter")){
			session.setAttribute("user",user);
		}
	}
	else if(action.equals("logout")){
		session.invalidate();
	}
	
%>
<body>
<% response.sendRedirect("Practice28.jsp");%>
</body>
</html>