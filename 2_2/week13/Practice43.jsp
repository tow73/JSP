<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice43</title>
<style>
table {
	margin-left: auto;
	margin-right: auto;
	height: 200px;
	width: 250px;
}

table, tr, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<h1 align="center">주소록 등록</h1>
	<hr>
	<form method=POST action=addr_add.jsp>
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name=username></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name=tel></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name=email></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><select name=gender><option selected>여</option>
						<option>남</option></select></td>
			</tr>
			<tr>
				<td>그룹</td>
				<td><select name=group>
						<option>가족</option>
						<option>직장</option>
						<option>친구</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="확인">&nbsp;<input
					type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>