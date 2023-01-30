<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<jsp:useBean id="stu" class="jspbook.pr42.StudentBean" scope="page" />
	<jsp:setProperty name="stu" property="*" />
	<c:set var="gender" value="${stu.getGender()}" />
	<c:set var="birth" value="${stu.getBirth()}" />
	<%
	String adult = stu.getBirth();
	String[] year = adult.split("-");
	%>
	
	<h1>등록내용</h1>
	<p>이름: <c:out value="${stu.getId()}" />
	<p>패스워드: <c:out value="${stu.getPw()}" />
	<p>이메일: <c:out value="${stu.getEmail()}" />
	<p>성별: <c:out value="${stu.getGender()}" />
	<p>생일: <c:out value="${stu.getBirth()}" />
	<hr>
	<c:out value="${stu.getId()}" />씨는 
	<c:choose>
		<c:when test="${gender eq 1}">여성이고,</c:when>
		<c:otherwise>남성이고,</c:otherwise>
	</c:choose>
	<%if(Integer.parseInt(year[0])<=2003) {%>
		성인입니다.<%}
	else {%>
		성인이 아닙니다.<%}%>
</body>
</html>