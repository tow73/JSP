<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice31</title>
<style>
table {
	border-collapse: collapse;
	height: 500px;
	margin-left: auto;
	margin-right: auto;
	text-align:center;
}
table, tr, td, th {
	border: 0.5px solid;
	margin-left: auto;
	margin-right: auto;
}
th, td {
	width: 100px;
}
.required{
	background-color: #FFE08C;
}
.option{
	background-color: #B2CCFF;
}
.liberal{
	background-color: #BDBDBD;
}
</style>
</head>
<body>
	<%!
	int[][] lectureType = {
			{0,1,1,0,1},
			{1,0,0,0,2},
			{0,0,2,0,4},
			{2,3,0,3,0},
			{0,0,0,2,0},
			{0,0,0,0,0}
	};
	int[][] consecutive = {
			{1,2,1,1,1},
			{2,0,1,1,1},
			{0,1,1,1,4},
			{2,1,1,1,0},
			{0,1,1,2,0},
			{1,1,1,0,0}
	};
	int[][] lectureTitle = {
			{-1,4,5,-1,5},
			{3,-1,-1,-1,1},
			{-1,-1,1,-1,7},
			{0,6,-1,6,-1},
			{-1,-1,-1,2,-1},
			{-1,-1,-1,-1,-1}
	};
	String[] titleNames = {
			"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", 
			"자료구조", "네트워크", "창의와감성", "사회봉사"
	};
	String[] days = {
			"월", "화", "수", "목", "금"
	};
	int flag = 0;
	%>
	<div align=center><h3>강의 시간표</h3></div>
	<table>
		<tr>
			<th>2학년</th>
			<%for(int i=0; i<5; i++) {%>
				<th><%out.println(days[i]);}%></th>
		</tr>
		<%for(int i=0; i<6; i++) {%><tr>
			<th><%out.println(i+1);%>교시</th>
			<%for(int j=0; j<5; j++) {
				int row=consecutive[i][j];
				if(row == 0) flag = 1;
				else if (row == 1) {
					flag = 0;
					if (lectureType[i][j] == 1) {%><td class="required"><%}
					else if (lectureType[i][j] == 2) {%><td class="option"><%}
					else if (lectureType[i][j] == 3) {%><td class="liberal"><%}
					else {%><td><%}
				}
				else {
					flag = 0;
					if (lectureType[i][j] == 1) {%><td rowspan="<%out.println(row);%>" class="required"><%}
					else if (lectureType[i][j] == 2) {%><td rowspan="<%out.println(row);%>" class="option"><%}
					else if (lectureType[i][j] == 3) {%><td rowspan="<%out.println(row);%>" class="liberal"><%}
					else {%><td rowspan="<%out.println(row);%>"><%}
				}
				if(flag == 0) {
					if(lectureTitle[i][j] != -1) {out.println(titleNames[lectureTitle[i][j]]);}
					else {%>
						&nbsp;<%}
					}%>
			<%}%></td>
		</tr><%}%>
	</table>
</body>
</html>