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
		String query = request.getQueryString();
		String[] params = query.split("&");
		for(String param : params){
			String[] pare = param.split("=");
	%>
	<p>
		<b><%= pare[0]%>: </b>
		<%= pare[1] %>
	</p>	
	<%
		}
	%>	
	<button type="button" onclick="history.back()">이전 페이지</button>
</body>
</html>