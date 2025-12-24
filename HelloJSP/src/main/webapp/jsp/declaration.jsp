<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<%!
		String headLine = "Hello, Java Server Pages";
		String getString(){
			return headLine;
		}
	%>
</head>
<body>
	<h1><% out.print(getString());%></h1>
</body>
</html>