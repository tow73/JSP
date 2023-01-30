<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="jspbook.pr03.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Problem03</title>
</head>
<body>
	<jsp:useBean id="lec" class="jspbook.pr03.LectureBean" />
	<jsp:setProperty name="lec" property="*" />
	<jsp:useBean id="lecm" class="jspbook.pr03.LectureManager" scope="session" />
	<jsp:setProperty name="lecm" property="*" />
	<%
	lecm.add(lec);
	String[] typeNames = { "전공필수", "전공선택", "교양", "자유선택" };
	String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사" };
	String[] days = { "월", "화", "수", "목", "금" };
	%>
	<form method=post action=Problem03.jsp>
		<table style="border-collapse: collapse; margin-left: auto; margin-right: auto;">
			<tr>
				<td>과목타입: <select name=type>
						<option value=0>전공필수</option>
						<option value=1>전공선택</option>
						<option value=2>교양</option>
						<option value=3>자유선택</option>
				</select></td>
				<td>&nbsp;</td>
				<td>과목명: <select name=title>
						<option value=0>웹프로그래밍</option>
						<option value=1>운영체제</option>
						<option value=2>소프트웨어프로그래밍</option>
						<option value=3>데이터베이스개론</option>
						<option value=4>자료구조</option>
						<option value=5>네트워크</option>
						<option value=6>창의와감성</option>
						<option value=7>사회봉사</option>
				</select></td>
				<td>&nbsp;</td>
				<td>요일: <select name=day>
						<option value=0>월</option>
						<option value=1>화</option>
						<option value=2>수</option>
						<option value=3>목</option>
						<option value=4>금</option>
				</select></td>
				<td>&nbsp;</td>
				<td>시간: <select name=time>
						<option value=1>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
						<option value=4>4</option>
						<option value=5>5</option>
						<option value=6>6</option>
				</select></td>
				<td>&nbsp;</td>
				<td>연강여부: <select name=consecutive>
						<option value=1>1</option>
						<option value=2>2</option>
						<option value=3>3</option>
						<option value=4>4</option>
						<option value=5>5</option>
						<option value=6>6</option>
				</select></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><input type="submit" value="등록"></td>
			</tr>
		</table>
		<br>
	</form>
	<hr>
	<div align="center">
	<%
	if(lec.getType() != -1){
		lecm.buildMatrix(lec);%>
		<jsp:include page="3_table.jsp" />
		<br><hr>
		<jsp:include page="3_timeline.jsp" />
		<br><hr>
		<%for(LectureBean lb : lecm.getLectureList()) {
			if(!lb.toString().equals("NULL"))
				out.println(lb.toString() + "<br>");
		}
	}
	%>
	</div>
</body>
</html>