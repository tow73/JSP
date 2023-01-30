<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
</head>
<body>
	<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />
	<div align=center>
		<h1>주소록 (전체보기)</h1>
		<hr>
		<a href="Practice32.jsp">주소추가</a><p>
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
			<% for(AddrBean ab : am.getAddrList()) { %>
			<tr>
				<td><%= ab.getUsername() %></td>
				<td><%= ab.getTel() %></td>
				<td><%= ab.getEmail() %></td>
				<td><%= ab.getGender() %></td>
				<td><%= ab.getGroup() %></td>
			</tr>
			<% } %>
		</table>
	</div>
</body>
</html>