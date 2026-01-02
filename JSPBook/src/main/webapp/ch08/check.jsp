<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<!-- 입력 데이터의 첫 문자가 숫자인지 검사하는 예 -->
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<p>아이디: <input type="text" name="id"></p>
		<p>비밀번호: <input type="password" name="passwd"></p>
		<button type="submit" onclick="checkLogin(event)">전송</button>
	</form>
	
	<script type="text/javascript">
		function checkLogin(e) {
			const form = document.loginForm;
			const lowAlphaReg = /^[a-z]{4,12}$/;
			
			// 숫자로 시작
			// const reg = /^[0-9]/;
			// reg 식 의미
			// ^: 문자열 시작
			// []: 대괄호 안의 문자(또는 문자 범위) 중 하나
			// 끝에 $가 없음 => 문자열의 첫 글자만 검사하고, 그 뒤는 신경쓰지 않는다.
			
			// 첫 글자가 영문자 꼬는 한글인 경우만 통과
			const reg = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]/;
			// 범위 지정 시에는 |를 넣지 말고 연속해서 써야함
			
			// 문자 전체가 영문/한글로만 이루어져야함: /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]+$/;
			// 숫자까지 추가하면: /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣0-9]+$/;
				
			if (reg.test(form.id.value)) {
				alert("아이디의 첫 시작은 숫자일 수 없습니다!");
				form.id.select();
				e.preventDefault();
				return;
			}
			
			if (form.passwd.value == '' || isNaN(form.passwd.value)) {
				alert("비밀번호는 숫자로 이루어져야 합니다!");
				form.passwd.select();
				e.preventDefault();
				return;
			}
			
		}
	</script>
</body>
</html>