<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 데이터 전송 받기 -->
	<%
		String userId = request.getParameter("id");
		String userPw = request.getParameter("pw");
		String userName = request.getParameter("name");
		StringBuffer buffer = new StringBuffer().append(request.getParameter("tel1")).append(request.getParameter("tel2")).append(request.getParameter("tel3"));
		String userTel = buffer.toString();
		String userGender = request.getParameter("gender");
		
		buffer.setLength(0);
		
		String[] userHobbies = request.getParameterValues("hobby");
	%>
	
	<p>아이디: <%= userId %></p>
	<p>비밀번호: <%= userPw %></p>
	<p>이름: <%= userName %></p>
	<p>연락처: <%= userTel %></p>
	<p>성별: <%= userGender %></p>
	<p>취미: 
		<%
			if(userHobbies != null){
				for(String h : userHobbies){
					out.println(h + " ");
				}
			}
		%>
	</p>
	<%-- <a href="<%= request.getHeader("referer") %>" class="btn btn-secondary">이전 페이지</a> --%>
	<button type="button" onclick="history.back()">이전 페이지</button>
</body>
</html>