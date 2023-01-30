<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice30</title>
<style>
table {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<%!
	String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론",
			"자료구조", "네트워크", "창의와감성", "사회봉사" };
	String[] days = {"월", "화", "수", "목", "금"};
	ArrayList<String> timetable = new ArrayList<String>();
	%>
	<form method=post action=Practice30.jsp>
	<table>
		<tr><td>과목타입: <select name="lectureType">
			<option value=0>전공필수</option>
			<option value=1>전공선택</option>
			<option value=2>교양</option>
			<option value=3>자유선택</option></select></td>
			<td>과목명: <select name="lectureTitle">
			<option value=0>웹프로그래밍</option>
			<option value=1>운영체제</option>
			<option value=2>소프트웨어프로그래밍</option>
			<option value=3>데이터베이스개론</option>
			<option value=4>자료구조</option>
			<option value=5>네트워크</option>
			<option value=6>창의와감성</option>
			<option value=7>사회봉사</option></select></td>
			<td>요일: <select name="days">
			<option value=0>월</option>
			<option value=1>화</option>
			<option value=2>수</option>
			<option value=3>목</option>
			<option value=4>금</option></select></td>
			<td>시간: <select name="time">
			<option value=1>1</option>
			<option value=2>2</option>
			<option value=3>3</option>
			<option value=4>4</option>
			<option value=5>5</option>
			<option value=6>6</option></select></td>
			<td>연강여부: <select name="consecutive">
			<option value=1>1</option>
			<option value=2>2</option>
			<option value=3>3</option>
			<option value=4>4</option>
			<option value=5>5</option>
			<option value=6>6</option></select></td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><input type="submit" value="등록"></td>
		</tr>
	</table>
	</form>
	<hr>
	<%
	request.setCharacterEncoding("UTF-8");
	String type = request.getParameter("lectureType");
	String title = request.getParameter("lectureTitle");
	String day = request.getParameter("days");
	String time = request.getParameter("time");
	String consecutive = request.getParameter("consecutive");
	if(type != null){
		int i_type = Integer.parseInt(type);
		int i_title = Integer.parseInt(title);
		int i_day = Integer.parseInt(day);;
		String value = typeNames[i_type] + "/" + titleNames[i_title] + "/" + days[i_day] + "/" + time + "/" + consecutive;
		session.setAttribute("value", value);
		timetable.add(value);
		
		for(String i:timetable) {%>
			<div style=text-align:center><% out.println(i + "<br>");%></div><%}
	}
	%>
</body>
</html>