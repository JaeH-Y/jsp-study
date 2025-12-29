<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Test</title>
</head>
<body>
	<!-- page 영역과 request 영역 비교 
		forward를 이용해서 다른 페이지로 이동
		=> 기존 page 영역은 소멸하고 request 영역은 유지
	-->	
	<%
		pageContext.setAttribute("pageScope", "pageValue");
		request.setAttribute("requestScope", "requestValue");
	%>
	
	<%-- pageValue = <%= pageContext.getAttribute("pageScope")%><br>
	requestValue = <%= request.getAttribute("requestScope")%><br> --%>

	<jsp:forward page="attributeTest5Result.jsp"/>
	
</body>
</html>