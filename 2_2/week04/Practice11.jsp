<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice11</title>
<style>
table, tr, td {
	border: 1px double black;
}

table {
	width: 400px;
	height: 500px;
	text-align: left;
}
</style>
</head>
<body>
	<div align="center">
		<table>
			<%
			int num[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };

			out.println("<tr>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("2 * " + num[i] + "= " + (2 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("3 * " + num[i] + "= " + (3 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("4 * " + num[i] + "= " + (4 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("5 * " + num[i] + "= " + (5 * num[i]) + "<br>");
			out.println("<tr>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("6 * " + num[i] + "= " + (6 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("7 * " + num[i] + "= " + (7 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("8 * " + num[i] + "= " + (8 * num[i]) + "<br>");
			out.println("<td>");
			for (int i = 0; i < 9; i++)
				out.println("9 * " + num[i] + "= " + (9 * num[i]) + "<br>");
			%>
		</table>
	</div>
</body>
</html>