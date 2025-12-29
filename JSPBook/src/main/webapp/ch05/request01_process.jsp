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
		// 폼(입력양식)에서 입력한 한글을 처리하도록 문자 인코딩 설정 
		/* request.setCharacterEncoding("UTF-8"); */		// Tomcat 10+ 생략 가능
		
		// 파라미터 값 저장
		String name = request.getParameter("name");
		String pw = request.getParameter("passwd");
	%>
	<p>이름: <%= name %></p>
	<p>비밀번호: <%= pw %></p>
	
	<!-- EL 사용 시 -->
	<p>아이디: ${param.name}</p>
	<p>비밀번호: ${param.passwd}</p>
</body>
</html>