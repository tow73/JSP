<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Problem02</title>
<style>
table, tr, td {
	border: 0.5px solid black;
}
table {
	border-collapse: collapse;
	width: 700px;
	height: 300px;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
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
	<%
	Calendar cal = Calendar.getInstance();  // 오늘 날짜
	int today_year = cal.get(Calendar.YEAR);
	int today_month = cal.get(Calendar.MONTH) + 1;
	int today_date = cal.get(Calendar.DATE);
	int year = cal.get(Calendar.YEAR);  // 설정 날짜
	int month = cal.get(Calendar.MONTH) + 1;
	
	if(request.getParameter("month") != null) {
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		
		if(month == 13){
			//year++;
			//month = 1;
			month = 12;
		}
		if(month == 0){
			//year--;
			//month = 12;
			month = 1;
		}
	}
	cal.set(year, month-1, 1);  // 달력 날짜
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH)+1;
	int cal_date = cal.get(Calendar.DATE);
	int cal_day = cal.get(Calendar.DAY_OF_WEEK);
	%>
	<h4>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<a href="Problem02.jsp?year=<%=year-1%>&month=<%=month%>">◀</a>
	<%=year%>년
	<a href="Problem02.jsp?year=<%=year+1%>&month=<%=month%>">▶</a>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
	<a href="Problem02.jsp?year=<%=year%>&month=<%=month-1%>">◀</a>
	<%=month%>월
	<a href="Problem02.jsp?year=<%=year%>&month=<%=month+1%>">▶</a>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
	<%=today_year%>-<%=today_month%>-<%=today_date%>
	</h4>
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
			for(int i = 1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++) {
				if(cal_day % 7 == 1)
					out.println("<td class='red'>"+i+"</td>");
				else if(cal_day % 7 == 0)
					out.println("<td class='blue'>"+i+"</td>");
				else
					out.println("<td>"+i+"</td>");
				
				if(cal_day % 7 == 0){
					out.println("</tr>");
					if(i < cal.getActualMaximum(Calendar.DAY_OF_MONTH))
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