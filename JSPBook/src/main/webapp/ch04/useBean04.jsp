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
	 
	 <h1>Scope: request 테스트 출력하기</h1>
	 <h3>아이디: <jsp:getProperty property="id" name="person"/></h3>
	 <h3>이름: <jsp:getProperty property="name" name="person"/></h3>
	 
	 <%
	 		person.setId(20250101);
	 		person.setName("홍길동");
	 %>
	 <!-- scope가 request이기 때문에, 이 수정 된 person 객체는 같은 요청(request) 안에서는
	 			다른 JSP 페이지에서도 그대로 공유됨 -->
	 			
	 <!-- 테스트: 같은 요청 내에서 다른 JSP 실행 -->
	 <jsp:include page="useBean03.jsp" />	 			
	 <!-- request가 유지되면 다른 페이지에서도 같은 person 객체를 재사용 가능 -->
	 
	 
</body>
</html>