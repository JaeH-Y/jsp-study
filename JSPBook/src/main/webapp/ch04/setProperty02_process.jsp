<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	
	<!-- 클라이언트에서 전송되어 오는 요청 파라미터 값을 속성으로 할당할 경우
			value대신 param을 사용
	-->

	<%-- <jsp:setProperty property="id" name="person" param="id"/>
	<jsp:setProperty property="name" name="person" param="name"/> --%>

	<!-- form 태그의 name속성 (= setProperty의 param속성)과 자바빈 객체의 속성명이 같으면
			자동으로 매핑되어 저장되므로 param 생략 가능
	-->
	<jsp:setProperty property="id" name="person"/>
	<jsp:setProperty property="name" name="person"/>

	<!-- 요청 파라미터 name 속성의 값과 자바빈 객체의 속성명이 *모두* 일치하는 경우 *을 사용하면 한번에 할당 가능 -->
	<jsp:setProperty property="*" name="person"/>
	
	<p>아이디: <%= person.getId() %></p>
	<p>이름: <%= person.getName() %></p>
	
	
</body>
</html>