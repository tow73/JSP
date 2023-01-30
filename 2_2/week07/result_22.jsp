<%--컴퓨터학과 20210756 김세진--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ tablib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<%@ page import = "java.util.Enumeration" %>
<%@ page import = "java.util.ArrayList" %>
<%
String[] mChoices = {"hobby"};
String[] hobbyNames = {"뉴스","맛집","책","영화","여행"};
String[] telCompany = {"010","011","017","070"};
String[] gNames = {"남","여"};
ArrayList<String> list = new ArrayList<String>();
int i = 0;
int j = 0;

Enumeration<String> e1 = request.getParameterNames();
while(e1.hasMoreElements()){
	String s = e1.nextElement();
	list.add(s);
}
Enumeration<String> e2 = request.getParameterNames();
while(e2.hasMoreElements()){
	String s = e2.nextElement();
	
	if(j==8){
		out.println(list.get(j) + " : ");
		String[] h1 =request.getParameterValues("hobby");
		for(int k=0; k<h1.length; k++){
			if(k>0)
				out.println("/");
			out.println(h1[k]);
		}
		out.println("<br>");
	}
	else
		out.println(list.get(j) + " : " + request.getParameter(s) + "<br>");
	j++;
}

out.println("<hr>");
out.println("<h1>Processing Parameters</h1>");

j = 0;
Enumeration<String> e3 = request.getParameterNames();
while(e3.hasMoreElements()){
	String s = e3.nextElement();
	
	if(j==2)
		out.println(list.get(j) + " : " + gNames[Integer.parseInt(request.getParameter(s))] + "<br>");
	else if(j==3)
		out.println(list.get(j) + " : " + telCompany[Integer.parseInt(request.getParameter(s))] + "<br>");
	else if(j==8){
		out.println(list.get(j) + " : ");
		String[] h2 =request.getParameterValues("hobby");
		for(int k=0; k<h2.length; k++){
			if(k>0)
				out.println("/");
			out.println(hobbyNames[Integer.parseInt(h2[k])]);
		}
		out.println("<br>");
	}
	else
		out.println(list.get(j) + " : " + request.getParameter(s) + "<br>");
	j++;
}
%>
</body>
</html>