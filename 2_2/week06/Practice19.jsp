<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
<style>
.date {
	margin-left: 1000px;
	margin-right: 20px;
}
table, tr, td {
	border:0.5px solid black;
}
table {
	border-collapse: collapse;
	width:700px;
	height:300px;
	margin-right: auto;
	margin-left: auto;
	text-align:center;
}
.red {
	color: red;
}

.blue {
	color: blue;
}
</style>
</head>
<body>
	<%@ page import="java.util.Calendar"%>
	<%
	Calendar today = Calendar.getInstance();  // 오늘 날짜
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH) + 1;
	int date = today.get(Calendar.DATE);
	Calendar cal = Calendar.getInstance();  // 달력 날짜(1일부터 시작)
	cal.set(Calendar.DATE,1);
	int cal_date = cal.get(Calendar.DATE);
	int cal_day = cal.get(Calendar.DAY_OF_WEEK);
	%>
	<h5 class="date"><%=year%>-<%=month%>-<%=date%></h5>
	<br>
	<table>
		<tr>
			<td class="red">일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td class="blue">토</td>
		</tr>
		<tr>
			<%
			for(int i = 1; i < cal_day; i++)
				out.println("<td>&nbsp;</td>");
			for(int i = 1; i <= today.getActualMaximum(Calendar.DAY_OF_MONTH); i++) {
				if(cal_day % 7 == 1)
					out.println("<td class='red'>"+i+"</td>");
				else if(cal_day % 7 == 0)
					out.println("<td class='blue'>"+i+"</td>");
				else
					out.println("<td>"+i+"</td>");
				
				if(cal_day % 7 == 0){
					out.println("</tr>");
					if(i < today.getActualMaximum(Calendar.DAY_OF_MONTH))
						out.println("<tr>");
				}
				cal_day++;
			}
			
			if(cal_day % 7 != 0){
				while(cal_day % 7 != 0){
					out.println("<td>&nbsp;</td>");
					cal_day++;
				}
				out.println("</tr>");
			}
			%>
		</tr>
	</table>
</body>
</html>