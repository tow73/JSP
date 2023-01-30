<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>calc_result</title>
</head>
<body>
	<jsp:useBean id="calc" class="jspbook.pr34.Calculator" scope="page" />
	<jsp:setProperty name="calc" property="*" />
	<table style="text-align: center;">
		<tr>
			<td colspan="2" style="background-color: #66C9F9;"><h1 class="text">CalCuLaTor</td>
		</tr>
		<tr>
			<td rowspan="7"><img src="./img/cal.jpg"></td>
			<td>&emsp;</td>
		</tr>
		<tr>
			<td><input type="text" name="num1" size=8 value=<%=calc.getOp1()%> readonly></td>
		</tr>
		<tr>
			<td><%=calc.getOperator()%></td>
		</tr>
		<tr>
			<td><input type="text" name="num2" size=8 value=<%=calc.getOp2()%> readonly></td>
		</tr>
		<tr>
			<td>=</td>
		</tr>
		<tr>
			<td><input type="text" name="result" size=8 value=<%=calc.calc()%>></td>
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