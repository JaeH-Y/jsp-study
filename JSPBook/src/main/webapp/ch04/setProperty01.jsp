<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<!-- useBean 액션 태그에 Person 클래스를 사용하여 아이디, 이름 출력하기 -->
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
	
	<!-- value: 값을 직접 지정하여 저장 -->
	<jsp:setProperty property="id" name="person" value="20260109"/> 
	<jsp:setProperty property="name" name="person" value="윤재훈"/> 
	
	<!-- 출력 방법 복습 -->
	<p>아이디: <%= person.getId() %></p>
	<p>아이디: <% out.println(person.getId()); %> </p>
	<p>이름: <jsp:getProperty property="name" name="person"/></p>
	
	
	<!-- EL 표현 언어(Spring에서 많이 사용함) -->
	<p>아이디(EL 사용): ${person.id} </p>
	<p>이름(EL 사용): ${person.name} </p>
	
</body>
</html>