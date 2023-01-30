<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_01</title>
</head>
<body>
	<form method=post action=session_02.jsp>
	<p>아이디: <input type="text" name=username>
	<p>비밀번호: <input type="password" name=passwd>
	<table>
		<tr>
			<td><input type="submit" value="로그인" onclick="document.location='session_02.jsp'">
			<input type="reset" value="취소"></td>
		</tr>
	</table>
	</form>
</body>
</html>