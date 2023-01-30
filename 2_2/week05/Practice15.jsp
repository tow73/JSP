<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice15</title>
</head>
<body>
	<%@ page import="java.util.Calendar"%>
	<%
	Calendar cal = Calendar.getInstance();
	int year = 1919;
	int month = 3;
	cal.set(year, month - 1, 1);
	int date = cal.get(Calendar.DAY_OF_WEEK);
	String m_word[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" };
	String d_word[] = { "일", "월", "화", "수", "목", "금", "토" };
	%>
	<h2><%=year%>년
		<%=m_word[month - 1]%>월
	</h2>
	<hr>
	<%
	for (int i = 1; i < date; i++) {
	%>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<%
	}
	%>
	<%
	for (int i = 1; i <= cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++) {
		out.println(i);
		if (date % 7 == 0)
			out.println("<br>");
		date++;
	%>
	&nbsp;
	<%
	}
	%>
</body>
</html>