<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
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
	<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));
	long result = 0;
	String op = request.getParameter("op");
	
	switch(op){
		case "+":
			result = n1 + n2; break;
		case "-":
			result = n1 - n2; break;
		case "*":
			result = n1 * n2; break;
		case "/":
			result = n1 / n2; break;
	}
	%>
	<table style="text-align: center;">
		<tr>
			<td colspan="2" style="background-color: #66C9F9;"><h1 class="text">CalCuLaTor</td>
		</tr>
		<tr>
			<td rowspan="7"><img src="./img/cal.jpg"></td>
			<td>&emsp;</td>
		</tr>
		<tr>
			<td><input type="text" name="num1" size=8 value=<%=n1%> readonly></td>
		</tr>
		<tr>
			<td><%=op%></td>
		</tr>
		<tr>
			<td><input type="text" name="num2" size=8 value=<%=n2%> readonly></td>
		</tr>
		<tr>
			<td>=</td>
		</tr>
		<tr>
			<td><input type="text" name="result" size=8 value=<%=result%>></td>
		</tr>
		<tr>
			<td>&emsp;</td>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #66C9F9;"><br>
			<br>
			<br></td>
		</tr>
	</table>
</body>
</html>