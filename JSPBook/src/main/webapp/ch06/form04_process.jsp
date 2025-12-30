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
		for(int i = 1; i <= 3; i++){
			if(request.getParameter("hobby"+i) != null){
				if(i > 1) buffer.append(", ");
				buffer.append(request.getParameter("hobby"+i));
			}
		}
		String userHobby = "";
		if(buffer.length() > 0){
			userHobby = buffer.toString();
		}
		//String userHobby1 = request.getParameter("hobby1");
		//String userHobby2 = request.getParameter("hobby2");
		//String userHobby3 = request.getParameter("hobby3");
	%>
	
	<p>아이디: <%= userId %></p>
	<p>비밀번호: <%= userPw %></p>
	<p>이름: <%= userName %></p>
	<p>연락처: <%= userTel %></p>
	<p>성별: <%= userGender %></p>
	<p>취미: <%= userHobby %></p>
	<%-- <a href="<%= request.getHeader("referer") %>" class="btn btn-secondary">이전 페이지</a> --%>
	<button type="button" onclick="history.back()">이전 페이지</button>
</body>
</html>