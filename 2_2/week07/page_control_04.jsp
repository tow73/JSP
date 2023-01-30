<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_04</title>
</head>
<body>
<%@ page import = "java.util.Enumeration" %>
<%
Enumeration<String> e1 = request.getParameterNames();
while(e1.hasMoreElements()){
	String s = e1.nextElement();
	if(s.equals("src"))
	out.println(request.getParameter(s));
}
out.println("에서 전달된 내용입니다." + "<br>");
out.println("page_contro_04.jsp에서 출력합니다." + "<br><hr>");

out.println("넘겨받은 파라미터들" + "<br>");
Enumeration<String> e2 = request.getParameterNames();
while(e2.hasMoreElements()){
	String s = e2.nextElement();
	out.println(s + " : " + request.getParameter(s) + "<br>");
}
out.println("<hr>");
%>
<p>안녕하세요, <%= request.getParameter("username") %>님. 반갑습니다.
<hr>
</body>
</html>