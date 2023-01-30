<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
* {
	text-align: center;
	margin-right: auto;
	margin-left: auto;
}

.text {
	font-style: italic;
	font-family: 'Times New Roman', Times, serif;
	font-weight: inherit bold;
}

table {
	width: 400px;
	height: 350px;
	border-collapse: collapse;
}

img {
	width: 220px;
	height: 300px;
}
</style>
</head>
<body>
	<form method=post action=calc_result.jsp>
	<table style="text-align:center;">
		<tr>
			<td colspan="2" style="background-color: #66C9F9;"><h1 class="text">CalCuLaTor</td>
		</tr>
		<tr>
			<td rowspan="7"><img src="./img/cal.jpg"></td>
			<td>&emsp;</td>
		</tr>
		<tr>
			<td><input type="text" name="num1" size=8></td>
		</tr>
		<tr>
			<td><select name="op">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select></td>
		</tr>
		<tr>
			<td><input type="text" name="num2" size=8></td>
		</tr>
		<tr>
			<td><input type="submit" value="="></td>
		</tr>
		<tr>
			<td><input type="text" name="result" size=8 disabled></td>
		</tr>
		<tr>
			<td>&emsp;</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #66C9F9;"><br><br><br></td>
		</tr>
	</table>
	</form>
</body>
</html>