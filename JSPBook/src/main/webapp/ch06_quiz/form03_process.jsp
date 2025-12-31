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
		String[] fruits = request.getParameterValues("fruit");
		for(int i = 0; i < fruits.length; i++){
			if(i != 0){			
	%>
				<%= ", " %>
	<%
			}
	%>
			<%= fruits[i] %>
	<%
		}
	%>
	<br>
	<button type="button" onclick="history.back()">이전 페이지</button>
</body>
</html>