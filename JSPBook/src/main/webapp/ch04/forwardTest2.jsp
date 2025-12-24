<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<!-- 클라이언트에서 전송되어 오는 요청 파라미터 값들에 대한 한글 처리(톰캣 10+ 생략 가능) -->	
	<% request.setCharacterEncoding("UTF-8"); %>
	<h2>포워딩 된 페이지(forwardTest2.jsp)</h2>
	<p>
		이름: <%= request.getParameter("name") %>
	</p>	
	<p>
		나이: <%= request.getParameter("age") %>
	</p>	
	<p>
		주소: <%= request.getParameter("address") %>
	</p>	
	<p>
		전화번호: <%= request.getParameter("tel") %>
	</p>	
</body>
</html>