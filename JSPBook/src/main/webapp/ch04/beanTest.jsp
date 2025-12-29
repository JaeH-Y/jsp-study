<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<!-- useBean: 자바빈 객체를 생성하기 위한 액션 태그 -->
	<!-- ch04.com.dao 패키지에 잇는 Beantest라는 자바 클래스를 beanTest라는 이름으로
			 자바빈 객체 생성. 생성 시 import 없이 경로를 기재해야함 -->
	<jsp:useBean id="beanTest" class="ch04.com.dao.BeanTest" scope="page" />
	
	<b>자바빈 사용 예제</b>
	<!-- beanTest 객체에 있는 name 값을 출력 -->
	<h2><%= beanTest.getName() %></h2>
	
	<!-- beanTest 자바빈 객체의 name 속성 값을 설정
			 name 속성은 private 접근 제한이므로 직접 변경 안됨
			 => 내부적으로 Setter 메소드를 호출하여 수정함
	 -->
	<jsp:setProperty name="beanTest" property="name" value="BeanTest!"/>
	
	<!-- beanTest 객체에 있는 name 값을 출력 -->
	<h2><%= beanTest.getName() %></h2>
	
	<!-- beanTest 자바빈 객체의 name 속성 값을 읽음
			=> 내부적으로 Getter 메소드를 호출하여 가져옴
	 -->
	<h3><jsp:getProperty property="name" name="beanTest"/></h3>
	
</body>
</html>