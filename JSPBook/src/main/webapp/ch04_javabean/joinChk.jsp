<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 정보 확인 페이지</title>
</head>
<body>
	<!-- Quiz: JoinBean 자바빈 객체를 join이라는 이름으로 생성(자바빈 등록) -->
	<jsp:useBean id="joinForm" class="ch04.com.dao.JoinBean" scope="request"></jsp:useBean>
	<!-- Quiz: 회원가입 폼에서 받아온 입력 값들을 자바빈 객체의 속성 값에 모두 저장 -->
	<jsp:setProperty property="id" name="joinForm"/>
	<jsp:setProperty property="pass" name="joinForm"/>
	<jsp:setProperty property="name" name="joinForm"/>
	<jsp:setProperty property="gender" name="joinForm"/>
	<jsp:setProperty property="age" name="joinForm"/>
	<jsp:setProperty property="email" name="joinForm"/>
	
	<!-- 또는 form에서 넘겨주는 파라미터랑 자바빈의 프로퍼티가 모두 일치하니까 *로 가능 -->
	<%-- <jsp:setProperty property="*" name="joinForm"/> --%>
	
	<!-- Quiz: 자바빈 각 프로퍼티의 값을 가져와서 표시 -->
	<section class="formArea">
		<h1>회원정보 확인</h1>
		<p>
			아이디: <jsp:getProperty property="id" name="joinForm"/>
		</p>
		<p>
			비밀번호: <jsp:getProperty property="pass" name="joinForm"/>
		</p>
		<p>
			이름: <jsp:getProperty property="name" name="joinForm"/>
		</p>
		<p>
			성별: <jsp:getProperty property="gender" name="joinForm"/>
		</p>
		<p>
			나이: <jsp:getProperty property="age" name="joinForm"/>
		</p>
		<p>
			이메일: <jsp:getProperty property="email" name="joinForm"/>
		</p>
	</section>
</body>
</html>