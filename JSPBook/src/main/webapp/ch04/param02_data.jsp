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
		String title = request.getParameter("title"); 
		String date = request.getParameter("date"); 
	%>
	<h3>
		<%= title %>
	</h3>
	<p>
		Today is: <%= date %>
	</p>
</body>
</html>