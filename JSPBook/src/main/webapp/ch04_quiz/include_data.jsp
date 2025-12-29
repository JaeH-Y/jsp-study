<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9X9 GetNumber</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<c:set var = "number" value = "${param.number}"/>
	<c:forEach var = "k" begin = "2" end = "9" step ="1">
		<p>${number} X ${k} = ${number * k}</p>
	</c:forEach>
</body>
</html>