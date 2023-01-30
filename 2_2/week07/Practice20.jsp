<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
img, table {
	float: center;
	text-align: center;
}

table {
	border-collapse: collapse;
	width: 1000px;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
}

.yellow {
	background-color: #FFFF99;
}
</style>
</head>
<body onLoad="alert('어서오세요'); frm1.id.focus();">
	<form name="frm1" method=post action=result_20.jsp>
		<table>
			<tr>
				<td colspan="2"><img src="./img/eclass_title.jpg"></td>
			</tr>
			<tr>
				<td colspan="2"><h2>로그인<hr></td>
			</tr>
			<tr>
				<td><img src="./img/eclass_logo.png" style="float: right"></td>
				<td rowspan="4" style="float: left"><h5>회원님의 아이디와 비밀번호를 정확히 입력하세요.<br><br>
						<select name="type">
							<option selected value="학부생">학부생</option>
							<option value="대학원생">대학원생</option>
							<option value="교직원">교직원</option>
						</select><br>
						<h5 style="text-align: left;">아이디&emsp;&emsp;&emsp;<input type="text" name="strID" class="yellow"><br>
						<h5 style="text-align: left;">비밀번호&emsp;&emsp;<input type="password" name="strPwd" class="yellow"><br> <br>
						<input type="submit" value="로그인">
						<input type="button" value="가입하기" onclick="document.location='member2.html'"></td>
			</tr>
		</table>
	</form>
</body>
</html>