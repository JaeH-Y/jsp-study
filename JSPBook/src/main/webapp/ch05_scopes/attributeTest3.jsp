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

	<h2>영역과 속성 테스트</h2>
	
	<h3>Application 영역에 저장된 내용들</h3>
	<p>
		이름: <%= (String)application.getAttribute("name") %>
	</p>
	<p>
		아이디: <%= (String)application.getAttribute("id") %>
	</p>
	
	<h3>Session 영역에 저장된 내용들</h3>
	<%
		Enumeration<String> en = session.getAttributeNames();
	
		while(en.hasMoreElements()){
			String attName = en.nextElement();
			String attValue = (String) session.getAttribute(attName);
		
	%>
	<p>
		<%= attName %>: <%= attValue %>
	</p>
	<%
		}
	%>
	<%-- <p>
		이메일: <%= (String)session.getAttribute("email") %>
	</p>
	<p>
		주소: <%= (String)session.getAttribute("address") %>
	</p>
	<p>
		전화번호: <%= (String)session.getAttribute("tel") %>
	</p> --%>
	
</body>
</html>