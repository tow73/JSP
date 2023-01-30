<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice10</title>
<style>
table, tr, td {
	border:1px double black;
}
table{
	width:700px;
	height:300px;
	text-align:center;
}
</style>
</head>
<body>
	<div align="center">
		<table>
			<%
			String day[] = { "월", "화", "수", "목", "금" };

			out.println("<tr>");
			out.println("<td><font color=\"red\">일</font></td>");
			for (int i = 0; i < 5; i++)
				out.println("<td>" + day[i] + "</td>");
			out.println("<td><font color=\"blue\">토</font></td>");
			out.println("<tr>");
			for (int i = 0; i < 4; i++) {
				out.println("<tr>");
				for (int j = 0; j < 7; j++)
					out.println("<td> &nbsp; </td>");
				out.println("</tr>");
			}
			%>
		</table>
	</div>
</body>
</html>