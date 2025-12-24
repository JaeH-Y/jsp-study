<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<!-- 주석의 종류 -->
	<%-- 1. JSP 주석 --%>
	<%-- 개발자 메모용, 클라이언트에 안보이게 할 때 --%>
	<%-- 서버상에서 컴파일되지 않으며 클라이언트에 전송되지도 않음 --%>
	
	<!-- 2. HTML 주석 -->
	<!-- HTML 문서에도 남겨야 할 때 -->
	<!-- 브라우저에 전송되는 HTML 문서에 포함되어 전송 -> 클라이언트가 소스 보기를 하면 볼 수 있음 -->
	<!-- 코드를 작성하고 HTML 주석으로 감쌀 경우 컴파일 단계에서 실행되기 때문에 예기치 않은 상황 발생 가능 -->
	
	<!-- 선언문 태그에 전역변수 사용하기 -->
	<!-- 선언문 태그: 자바 전역변수(클래스 멤버 변수, 필드)나 메소드를 정의하는데 사용(거의 안씀) -->
	<%! int data = 50; %>
	
	<!-- 스크립틀릿 태그 -->
	<!-- 일반 자바 로직, 지역변수 등 넣을 때 -->
	<%
		// 3. 자바 주석
		/* 
			또는 여러줄 주석
		 */
		 out.println("Value of the variable is: " + data); // 선언문 태그에 선언된 전역변수 50에 해당
	%>
	
</body>
</html>