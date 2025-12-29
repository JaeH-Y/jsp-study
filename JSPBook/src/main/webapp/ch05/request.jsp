<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>implicit Objects</title>
</head>
<body>
	<!-- request 내장 객체 사용 예: 요청 파라미터 값 출력하기 -->
	<form action="process.jsp" method="post">
		<label for="nameT">이름: </label>
		<input type="text" id="nameT" name="name">
		<button type="submit">전송</button>
	</form>
	
	
	
</body>
</html>