<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<!-- 스크립틀릿 태그에 0부터 10까지 짝수만 출력 -->
	<%
		for(int i = 0; i <= 10; i++){
			if(i % 2 == 0){
				out.print(i + "<br>");	// 스크립틀릿 내부에 html태그 삽입 가능
				if(i == 10) continue;
				out.print("-> ");
			}
		}
	%>
</body>
</html>