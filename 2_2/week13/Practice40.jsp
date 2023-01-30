<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<style>
table {
	border-collapse: collapse;
	width: 500px;
	height: 400px;
	margin-left: auto;
	margin-right: auto;
}
table, tr, td {
	border: 0.5px solid;
}
#name {
	text-align: center;
	width: 70px;
	font-weight: bold;
	background-color: #bcbcbc;
}
input.imageAlign {
	vertical-align: middle;
}
#bottom {
	text-align: center;
	background-color: #bcbcbc;
}
</style>
</head>
<body>
	<form method=post action=result_40.jsp>
		<div style="text-align: center;"><img src="./img/eclass_title.jpg"></div>
		<table>
			<tr>
				<td id="name" colspan="2">회원가입</td>
			</tr>
			<tr>
				<td id="name">아이디</td>
				<td><input type="text" name="id"><input type=image src="img/check.gif" class="imageAlign"></td>
			</tr>
			<tr>
				<td id="name">패스워드</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td id="name">성별</td>
				<td><input type="radio" name="gender" value=0>남&emsp;<input type="radio" name="gender" value=1 checked>여</td>
			</tr>
			<tr>
				<td id="name">국적</td>
				<td><input type="text" value="대한민국"><input type="button" value="국적변경 " disabled></td>
			</tr>
			<tr>
				<td id="name">휴대폰</td>
				<td><select name="phone1">
						<option value=0 selected>010</option>
						<option value=1>011</option>
						<option value=2>017</option>
						<option value=3>070</option>
				</select>-<input type="text" name="phone2" maxlength="4" size="4">-<input type="text" name="phone3" maxlength="4" size="4"></td>
			</tr>
			<tr>
				<td id="name">이메일</td>
				<td><input type="text" name="email" size="50px"></td>
			</tr>
			<tr>
				<td id="name">생일</td>
				<td><input type="date" name="birth"></td>
			</tr>
			<tr>
				<td id="name">관심분야</td>
				<td><input type="checkbox" name="hobby" value=0>뉴스 
					<input type="checkbox" checked name="hobby" value=1>맛집 
					<input type="checkbox" name="hobby" value=2>책 
					<input type="checkbox" name="hobby" value=3>영화 
					<input type="checkbox" name="hobby" value=4>여행</td>
			</tr>
			<tr>
				<td id="name">가입인사</td>
				<td><textarea name="memo" rows="6" cols="60">회원들에게 간단한 가입인사를 남겨주세요</textarea></td>
			</tr>
			<tr>
				<td id="name">증명사진</td>
				<td><input type="file"></td>
			</tr>
			<tr>
				<td id="bottom" colspan="2"><input type="submit" value="가입하기">
				<input type="reset" value="다시작성"></td>
			</tr>
		</table>
	</form>
</body>
</html>