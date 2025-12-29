<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<h2>JSTL의 Core 태그를 이용하여 0부터 10까지의 짝수 출력하기</h2>
	
	<c:forEach var = "k" begin = "0" end = "10" step = "1">
		<c:if test="${ k mod 2 == 0 }">
			${k} <br>
		</c:if>
	</c:forEach>
</body>
</html>