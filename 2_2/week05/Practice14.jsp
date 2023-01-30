<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
	<%@ page import="java.util.Calendar"%>
	<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	String m_word[] = {"1","2","3","4","5","6","7","8","9","10","11","12"};
	String d_word[] = {"일","월","화","수","목","금","토"};
	
	out.println("오늘은 "+year+"년 "+m_word[month]+"월 "+date+"일 "+d_word[day-1]+"요일입니다.<br><br>");
	out.println("이번 달은 "+start+"일부터 시작하여 "+end+"일에 끝납니다.<br><br>");
	
	cal.set(2001,Calendar.JULY,3);
	out.println("내 생일 "+cal.get(Calendar.YEAR)+"년 "+m_word[cal.get(Calendar.MONTH)]+"월 "+cal.get(Calendar.DATE)+"일은 "+d_word[cal.get(Calendar.DAY_OF_WEEK)-1]+"요일입니다.");
	%>
</body>
</html>