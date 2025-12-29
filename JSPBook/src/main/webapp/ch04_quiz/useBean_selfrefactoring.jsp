<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan" scope="page" />
</head>
<body>
	<h3> 구구단 계산하기 </h3>
	<form action="" method="post">
		<label for="inpT">구구단 선택</label>
		<input type="text" id="inpT" name="num">
		<button type="submit">확인</button>
		<button type="reset">reset</button>
	</form>
	
	
	<c:if test="${not empty param.num}">
		<%
			if(request.getParameter("num") == null || request.getParameter("num") == "") return;
			int num = Integer.parseInt(request.getParameter("num"));
			List<String> list = gugudan.getGuGuResult(num);
			for(int i = 0; i < list.size(); i++){
				String result = list.get(i);
		%>
		<p><%= result %></p>
		<%
			}
		%>
		</c:if>
</body>
</html>