<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.pr43.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
<style>
* {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:useBean id="addr" class="jspbook.pr43.AddrBean" />
	<jsp:setProperty name="addr" property="*" />
	<jsp:useBean id="am" class="jspbook.pr43.AddrManager" scope="application" />
	<%am.add(addr);%>
	<h1>등록내용</h1>
	<p>이름: ${addr.getUsername()}
	<p>전화번호: ${addr.getTel()}
	<p>이메일: ${addr.getEmail()}
	<p>성별: ${addr.getGender()}
	<p>그룹: ${addr.getGroup()}
	<hr>
	<a href="addr_list.jsp">전체 목록 보기</a>&emsp;&emsp;&emsp;&emsp;
	<a href="addr_list_group.jsp">그룹별 목록 보기</a>
</body>
</html>