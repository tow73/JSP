<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result_40</title>
</head>
<body>
	<%
	String[] list = {"id","pwd","gender","phone1","phone2","phone3","email","birth","hobby","memo"};
	String[] hobbyNames = {"뉴스","맛집","책","영화","여행"};  //8
	String[] telCompany = {"010","011","017","070"};  //3
	String[] gNames = {"남","여"};  //2
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("hobbyNames", hobbyNames);
	pageContext.setAttribute("telCompany", telCompany);
	pageContext.setAttribute("gNames", gNames);
	%>
	<p><c:out value="${list[0]}" />: ${param.id}
	<p><c:out value="${list[1]}" />: ${param.pwd}
	<p><c:out value="${list[2]}" />: ${param.gender}
	<p><c:out value="${list[3]}" />: ${param.phone1}
	<p><c:out value="${list[4]}" />: ${param.phone2}
	<p><c:out value="${list[5]}" />: ${param.phone3}
	<p><c:out value="${list[6]}" />: ${param.email}
	<p><c:out value="${list[7]}" />: ${param.birth}
	<p><c:out value="${list[8]}" />:
	<c:forEach var="i" items="${paramValues.hobby}">
		${i}/
	</c:forEach>
	<p><c:out value="${list[9]}" />: ${param.memo}
	
	<hr>
	<h1>Processing Parameters</h1>
	
	<p><c:out value="${list[0]}" />: ${param.id}
	<p><c:out value="${list[1]}" />: ${param.pwd}
	<c:forEach var="g" items="${gNames}" varStatus="i">
		<c:if test="${i.index == param.gender}">
			<p><c:out value="${list[2]}" />: <c:out value="${g}" />
		</c:if>
	</c:forEach>
	<c:forEach var="t" items="${telCompany}" varStatus="i">
		<c:if test="${i.index == param.phone1}">
			<p><c:out value="${list[3]}" />: <c:out value="${t}" />
		</c:if>
	</c:forEach>
	<p><c:out value="${list[4]}" />: ${param.phone2}
	<p><c:out value="${list[5]}" />: ${param.phone3}
	<p><c:out value="${list[6]}" />: ${param.email}
	<p><c:out value="${list[7]}" />: ${param.birth}
	<p><c:out value="${list[8]}" />:
	<c:forEach var="h" items="${hobbyNames}" varStatus="i">
		<c:forEach var="j" items="${paramValues.hobby}">
			<c:if test="${i.index == j}">
				${h}/
			</c:if>
		</c:forEach>
	</c:forEach>
	<p><c:out value="${list[9]}" />: ${param.memo}
</body>
</html>