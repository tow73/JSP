<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice12</title>
<style>
table, tr, td {
	border-style:none;
}
</style>
</head>
<body>
	<div align="center">
		<h2>include 지시어 연습</h2>
		<hr>
		<table>
			<tr>
				<td><%@ include file="calendar.jsp"%></td>
				<td><%@ include file="news.jsp"%></td>
			</tr>
		</table>
	</div>
</body>
</html>