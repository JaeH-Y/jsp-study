<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception!!</title>
</head>
<body>
	<!-- page 디텍티브 태그에 errorPage 속성을 이용하여 오류 페이지 호출하기 -->
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<p>
		결과: <%= (num1/num2) %>
	</p>
</body>
</html>