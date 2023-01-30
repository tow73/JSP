<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_01</title>
</head>
<body>
	<form method=post action=application_02.jsp>
		<table>
			<tr>
				<td>아이디:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp; <input type="text" name=username></td>
			</tr>
			<tr>
				<td>원하는 세션 지속시간(분): <input type="text" name=time></td>
			</tr>
			<tr><td><br></td></tr>
			<tr>
				<td><input type="submit" value="로그인" onclick="document.location='application_02.jsp'">
				<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>