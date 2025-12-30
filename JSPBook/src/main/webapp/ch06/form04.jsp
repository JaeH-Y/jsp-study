<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 데이터 전송하기 -->
	<h3>회원가입</h3>
	<form action="form04_process.jsp" name="member" method="post">
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
			연락처: 
			<select name="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> -
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
			<input type="checkbox" name="hobby1" value="독서" id="book" checked>
			<label for="sports">운동</label>
			<input type="checkbox" name="hobby2" value="운동" id="sports">
			<label for="movie">영화</label>
			<input type="checkbox" name="hobby3" value="영화" id="movie">
		</p>
		<p>
			<textarea rows="3" cols="30" name="coment" placeholder="가입 인사를 입력해주세요.^^"></textarea>
		</p>
		<button type="submit">가입하기</button>
		<button type="reset">다시쓰기</button>
	</form>
</body>
</html>