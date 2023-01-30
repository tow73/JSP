<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
<style>
* {
	text-align:center;
}
</style>
</head>
<body>
	<jsp:useBean id="login" class="jspbook.pr33.LoginBean" scope="page" />
	<jsp:setProperty name="login" property="*" />
	<%
	String name = login.getId();
	int gender = login.getGender();
	String gender_type;
	String adult;
	if(gender == 1) gender_type = "여성";
	else gender_type = "남성";
	if(login.isGrownUp() == true) adult = "성인입니다.";
	else adult = "성인이 아닙니다.";
	%>
	<h1>등록내용</h1>
	이름: <%=name%><p>
	패스워드: <%=login.getPw()%><p>
	이메일: <%=login.getEmail()%><p>
	성별: <%=gender%><p>
	생일: <%=login.getBirth()%>
	<hr>
	<%=name%>씨는 <%=gender_type%>이고, <%=adult%>
</body>
</html>