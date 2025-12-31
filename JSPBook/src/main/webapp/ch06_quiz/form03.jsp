<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="form03_process.jsp">
		<label for="orange">오렌지</label>
		<input type="checkbox" name="fruit" value="오렌지" id="orange">
		<label for="apple">사과</label>
		<input type="checkbox" name="fruit" value="사과" id="apple">
		<label for="banana">바나나</label>
		<input type="checkbox" name="fruit" value="바나나" id="banana">
		<br>
		<button type="submit">전송</button>
	</form>
</body>
</html>