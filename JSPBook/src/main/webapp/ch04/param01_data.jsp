<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<% 
		String id = request.getParameter("id"); 
		String name = request.getParameter("name"); 
	%>
	<p>
		아이디: <%= id %>
	</p>
	<p>
		이름: <%= name %>
	</p>
</body>
</html>