<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception!!</title>
</head>
<body>
	<%
		int num1 = 0;
		int num2 = 0;
		try{
			num1 = Integer.parseInt(request.getParameter("num1"));
			num2 = Integer.parseInt(request.getParameter("num2"));
		}
		catch(NumberFormatException ex){
			// 예외 발생 시 오류페이지로 이동
			RequestDispatcher dispather = request.getRequestDispatcher("tryCatch_error.jsp");
			dispather.forward(request, response);
			return; // ⭐ 반드시 필요
		}
	%>
	<p>
		결과: <%= (num1/num2) %>
	</p>
</body>
</html>