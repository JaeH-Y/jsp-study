<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	 <!-- useBean 액션 태그에 Calculator 클래스를 사용하여 숫자 출력하기 -->
	 <jsp:useBean id="calBean" class="ch04.com.dao.Calculator" />
	 
	 <p>오늘의 날짜 및 시각</p>
	 <%
	 		int m = calBean.process(5);
	 		out.println("5의 3제곱: " + m);
	 %>
	 
</body>
</html>