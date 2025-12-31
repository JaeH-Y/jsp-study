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
		Enumeration<String> en = request.getParameterNames();
		StringBuffer buffer = new StringBuffer();
		while(en.hasMoreElements()){
			String name = en.nextElement();
			buffer.append(name).append(": ").append(request.getParameter(name)).append("<br>");
		}
	%>
	<%= buffer %>
</body>
</html>