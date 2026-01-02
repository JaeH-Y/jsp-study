<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception!!</title>
</head>
<body>
	<h2>오류가 발생하였습니다.</h2>
	<p>빠밤!!</p>
	<h3>예외 유형(클래스명): <%= exception.getClass().getName() %></h3>
	<h3>예외 메세지: <%=exception.getMessage() %></h3>
	<h3>예외 유형 + 메세지: <%= exception %></h3>
	
</body>
</html>