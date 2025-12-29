<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan"></jsp:useBean>
</head>
<body>
	<%
		List<String> list = gugudan.getGuGuResult(5);
		for(int i = 0; i < list.size(); i++){
			String result = list.get(i);
	%>
	<p><%= result %></p>
	<%
		}
	%>
</body>
</html>