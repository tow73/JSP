<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="jspbook.pr03.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>timeline</title>
<style>
* {
	text-algin:center;
}
</style>
</head>
<body>
	<jsp:useBean id="lecm" class="jspbook.pr03.LectureManager" scope="session" />
	<jsp:setProperty name="lecm" property="*" />
	<%
	String[] typeNames = { "전공필수", "전공선택", "교양", "자유선택" };
	String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사" };
	String[] days = { "월", "화", "수", "목", "금" };
	int flag = 0;
	
	Calendar cal = Calendar.getInstance();
	int cal_day = cal.get(Calendar.DAY_OF_WEEK);
	String day[] = {"일요일","월요일","화요일","수요일","목요일","금요일","토요일"};
	%>
	<div style="float:center">
	<h5>오늘의 시간표</h5>
	<%if(cal_day == 1 || cal_day == 7) {%><p><%out.println(day[cal_day-1]);%>은 일정이 없습니다.</p><%}
	else {%>
		<p><%out.println(day[cal_day-1]);%></p>
		<%int j = cal_day-2;
		String titleN = null;

		for(int i=0; i<6; i++) {
			int title = lecm.title()[i][j];
			int span = lecm.span()[i][j];
			
			if(title == -1 && span != 0)
				titleN = "일정없음";
			else if(title != -1)
				titleN = titleNames[title];
				
			out.println(i+1 + ". " + titleN + "<br>");
		}
	}%>
	</div>
</body>
</html>