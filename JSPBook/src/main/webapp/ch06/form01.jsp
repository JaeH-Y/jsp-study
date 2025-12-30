<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 태그와 input 태그로 간단한 회원 가입 양식 만들기 -->
	<h3>회원가입</h3>
	<form action="" name="member" method="post">
		<p>
			아이디: <input type="text" name="id">
			<button type="button">중복검사</button>
		</p>
		<p>
			비밀번호: <input type="password" name="pw">
		</p>
		<p>
			이름	: <input type="text" name="name">
		</p>
		<p>
			연락처: <input type="tel" name="tel1" value="010" maxlength="3"> -
			<input type="tel" name="tel2" maxlength="4"> -
			<input type="tel" name="tel3" maxlength="4">
		</p>
		<p>
			성별:
			<input type="radio" name="gender" value="male" id="male" checked>
			<label for="male">남성</label>
			<input type="radio" name="gender" value="female" id="female">
			<label for="female">여성</label>
		</p>
		<p>
			취미:
			<label for="book">독서</label>
			<input type="checkbox" name="hobby1" value="book" id="book" checked>
			<label for="sports">운동</label>
			<input type="checkbox" name="hobby2" value="sports" id="sports">
			<label for="movie">영화</label>
			<input type="checkbox" name="hobby3" value="movie" id="movie">
		</p>
		<button type="submit">가입하기</button>
		<button type="reset">다시쓰기</button>
	</form>
</body>
</html>