<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="jspbook.pr03.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table</title>
<style>
.t {
	border-collapse: collapse;
	border: 0.5px solid;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
	text-align:center;
}
.r {
	border: 0.5px solid;
	margin-left: auto;
	margin-right: auto;
}
.hd {
	border: 0.5px solid;
	width: 100px;
	margin-left: auto;
	margin-right: auto;
}
#required{
	background-color: #FFE08C;
}
#option{
	background-color: #B2CCFF;
}
#liberal{
	background-color: #BDBDBD;
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
	%>
	<div align=center><h3>강의 시간표</h3></div>
	<table class="t">
		<tr class="r">
			<th class="hd">2학년</th>
			<%for(int i=0; i<5; i++) {%>
				<th class="hd"><%out.println(days[i]);}%></th>
		</tr>
		<%for(int i=0; i<6; i++) {%><tr class="r">
			<th class="hd"><%out.println(i+1);%>교시</th>
			<%for(int j=0; j<5; j++) {
				int row=lecm.span()[i][j];
				if(row == 0) flag = 1;
				else if (row == 1) {
					flag = 0;
					if (lecm.type()[i][j] == 1) {%><td class="hd" id="required"><%}
					else if (lecm.type()[i][j] == 2) {%><td class="hd" id="option"><%}
					else if (lecm.type()[i][j] == 3) {%><td class="hd" id="liberal"><%}
					else {%><td class="hd"><%}
				}
				else {
					flag = 0;
					if (lecm.type()[i][j] == 1) {%><td rowspan="<%out.println(row);%>" class="hd" id="required"><%}
					else if (lecm.type()[i][j] == 2) {%><td rowspan="<%out.println(row);%>" class="hd" id="option"><%}
					else if (lecm.type()[i][j] == 3) {%><td rowspan="<%out.println(row);%>" class="hd" id="liberal"><%}
					else {%><td rowspan="<%out.println(row);%>" class="hd"><%}
				}
				if(flag == 0) {
					if(lecm.title()[i][j] != -1) {out.println(titleNames[lecm.title()[i][j]]);}
					else {%>
						&nbsp;<%}
					}%>
			<%}%></td>
		</tr><%}%>
	</table>
</body>
</html>