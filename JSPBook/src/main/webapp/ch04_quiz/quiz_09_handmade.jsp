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
	<h2>구구단 출력하기</h2>
	
	<c:forEach var = "k" begin = "2" end = "9" step ="1">
		<form action="#" method="get" style="display: inline">
			<button type="submit" name="dan" value="${k}">${k}단</button>
		</form>
	</c:forEach>
	
	<c:if test="${not empty param.dan}"></c:if>
	
</body>
</html>