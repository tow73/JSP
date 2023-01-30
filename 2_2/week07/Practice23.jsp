<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_01</title>
</head>
<body>
	<form method=post action=page_control_02.jsp>
		<table>
			<tr>
				<td>아이디:</td>
				<td><input type="text" name="username">
				<td>비밀번호:</td>
				<td><input type="passwd" name="pwd"></td>
				<td><input type="submit" value="forward 전송"></td>
			</tr>
		</table>
	</form>
	<form method=post action=page_control_03.jsp>
		<table>
			<tr>
				<td>아이디:</td>
				<td><input type="text" name="username">
				<td>비밀번호:</td>
				<td><input type="passwd" name="pwd"></td>
				<td><input type="submit" value="sendRedirect 전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>