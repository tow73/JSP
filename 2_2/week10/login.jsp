<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String user = (String)session.getAttribute("user");
	if(user != null) {
		out.println(user + "님 환영합니다.");%>
		<form method=post action=checker.jsp><input type="hidden" name="action" value="logout"><input type="submit" value="로그아웃"></form>	
	<%}
	else { %>
		<form method=post action=checker.jsp>
		<table>
			<tr>
				<td><input type="hidden" name="action" value="login">아이디: <input type="text" name=user></td>
			</tr>
			<tr><td>&ensp;</td></tr>
			<tr>
				<td>패스워드: <input type="password" name=passwd></td>
			</tr>
			<tr><td>&ensp;</td></tr>
			<tr>
				<td><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
	<%} %>
</body>
</html>