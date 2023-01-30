<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add</title>
<style>
* {
	text-align:center;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String addrbook = request.getParameter("name").concat(", ").concat(request.getParameter("phone"));
	ArrayList<String> list = (ArrayList<String>)application.getAttribute("addrbook");
	
	if(list == null)
		list = new ArrayList<String>();
	list.add(addrbook);
	application.setAttribute("addrbook",list);
	%>
	<h1>주소록</h1>
	<hr>
	<%
	for(int i=0; i<list.size(); i++)
		out.println((i+1) + ". " + list.get(i) + "<br>");
	%>
</body>
</html>