<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
	<h1 align="center">Alice in Wonderland</h1>
	<table style="margin-right:auto; margin-left:auto;">
		<tr>
			<td><jsp:include page="viewer.jsp" /></td>
			<td>&emsp;</td>
			<td><jsp:include page="login.jsp" /></td>
		</tr>
	</table>
</body>
</html>