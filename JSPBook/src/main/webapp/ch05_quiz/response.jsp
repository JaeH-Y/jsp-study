<%@page import="java.time.LocalDateTime"%>
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
		response.setHeader("refresh", "5");
		LocalDateTime now = LocalDateTime.now();
	%>
	<%= now %> <br>
	<form action="response_data.jsp">
		<button type="submit">구글로 이동</button>
	</form>
</body>
</html>