<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		StringBuffer buffer = new StringBuffer();
		buffer.append("name: ").append(request.getParameter("name")).append("<br>");
		buffer.append("address: ").append(request.getParameter("address")).append("<br>");
		buffer.append("email: ").append(request.getParameter("email")).append("<br>");
	%>
	<%= buffer %>
</body>
</html>