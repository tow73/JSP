<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.pr43.*" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list_group</title>
</head>
<body>
	<jsp:useBean id="am" class="jspbook.pr43.AddrManager" scope="application" />
	<div align=center>
		<h1>주소록 (전체보기)</h1>
		<hr>
		<a href="Practice43.jsp">주소추가</a><p>
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
			<c:forEach var="ab" items="${am.getAddrList()}">
				<c:if test="${ab.getGroup() eq '가족'}">
					<tr>
						<td>${ab.getUsername()}</td>
						<td>${ab.getTel()}</td>
						<td>${ab.getEmail()}</td>
						<td>${ab.getGender()}</td>
						<td>${ab.getGroup()}</td>
           			</tr>
				</c:if>
			</c:forEach>
			<c:forEach var="ab" items="${am.getAddrList()}">
				<c:if test="${ab.getGroup() eq '직장'}">
					<tr>
						<td>${ab.getUsername()}</td>
						<td>${ab.getTel()}</td>
						<td>${ab.getEmail()}</td>
						<td>${ab.getGender()}</td>
						<td>${ab.getGroup()}</td>
           			</tr>
				</c:if>
			</c:forEach>
			<c:forEach var="ab" items="${am.getAddrList()}">
				<c:if test="${ab.getGroup() eq '친구'}">
					<tr>
						<td>${ab.getUsername()}</td>
						<td>${ab.getTel()}</td>
						<td>${ab.getEmail()}</td>
						<td>${ab.getGender()}</td>
						<td>${ab.getGroup()}</td>
           			</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
</body>
</html>