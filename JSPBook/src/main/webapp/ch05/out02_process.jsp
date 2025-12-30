<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- out 내장 객체로 아이디와 비밀번호 전송받아 출력하기 -->
	<h3>out 내장 객체로 출력하기</h3>
	<p>아이디: <% out.println(request.getParameter("id")); %></p>
	<p>비밀번호: <% out.println(request.getParameter("passwd")); %></p>
	
	<!-- EL 표현 언어 사용 시 -->
	<p>아이디: ${param.id}</p>
	<p>비밀번호: ${param.passwd}</p>
	
</body>
</html>