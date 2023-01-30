<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action</title>
<style>
h1{
	text-align: center;
}
table {
	margin-right: auto;
	margin-left: auto;
}
td {
	width: 250px;
}
.empty {
	width: 15px;
}
</style>
</head>
<body>
	<h1>Include Action Practice</h1>
	<br>
	<table>
		<tr>
			<td><jsp:include page="calendar.jsp">
					<jsp:param name="YEAR" value="2018" />
					<jsp:param name="MONTH" value="7" />
				</jsp:include></td>
			<td class="empty"></td>	
			<td><jsp:include page="news.jsp" /></td>
		</tr>
	</table>
</body>
</html>