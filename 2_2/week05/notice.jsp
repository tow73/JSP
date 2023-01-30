<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice13</title>
<style>
* {
	float: center;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 800px;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<img src="./img/eclass_title.jpg">
	<table>
		<tr>
			<td bgcolor="#FFDAB9"><h3>오류가 발생했습니다.</h4></td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td bgcolor="#FFEFD5"><br><br><br>
			<img src="./img/flower.gif">
			<h4>오류 발생 시간: <%= new java.util.Date() %></h3>
			<h4>최대한 빨리 조치하겠습니다.</h3><br><br></td>
		</tr>
	</table>
</body>
</html>