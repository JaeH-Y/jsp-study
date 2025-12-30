<%@page import="java.net.PasswordAuthentication"%>
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
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		
		if("admin".equals(id) && "1234".equals(pw)){
			response.sendRedirect("response01_success.jsp");
		}
		else{
			response.sendRedirect("response01_failed.jsp");
		}
	%>
</body>
</html>