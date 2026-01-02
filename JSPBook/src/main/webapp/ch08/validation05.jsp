<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation</title>
</head>
<body>
	<!-- 회원 가입 폼 페이지에서 입력한 데이터 형식 유효성 검사하기 -->
	<form name="member" action="validation05_process.jsp" method="post">
		<p>아이디: <input type="text" name="id"></p>
		<p>비밀번호: <input type="password" name="passwd"></p>
		<p>이름: <input type="text" name="name"></p>
		<p>
			연락처: 
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - 
			<input type="text" maxlength="4" size="4" name="phone2"> - 
			<input type="text" maxlength="4" size="4" name="phone3">
		</p>
		<p>이메일: <input type="text" name="email"></p>
		<button type="button" onclick="checkMember()">가입하기</button> 
	</form>
	
	<script type="text/javascript">
		function checkMember(){
			const form = document.member;
			
			const id = form.id.value;
			const passwd = form.passwd.value;
			const name = form.name.value;
			const phone1 = form.phone1.value;
			const phone2 = form.phone2.value;
			const phone3 = form.phone3.value;
			const phone = phone1 + "-" + phone2 + "-" + phone3;;
			const email = form.email.value;
			
			// 영문 대소문자, 한글, 한글의 자음과 모음으로 시작하는지 검사
			const regExpId = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]/;
			
			// 비밀번호 숫자만 최소 4자리 이상
			const regExpPasswd = /^[0-9]{4,}$/;
			
			// 이름에 대해 한글만 검사
			const regExpName = /^[가-힣]{2,4}$/;
			
			// 전화번호 형태인지 검사
			const regExpPhone = /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/;
			
			// 이메일 형식인지 검사
			const regExpEmail = /^[a-zA-Z0-9]([-_.]?[a-zA-Z0-9])*@[a-zA-Z0-9]([-_.]?[a-zA-Z0-9])*\.[a-zA-z]{2,3}$/i
			// /i: 대소문자 무시
			// ^[a-zA-Z0-9]: 첫 글자는 영문 또는 숫자여야함
			// ([-_.]?[a-zA-Z0-9]): - 또는 _ 또는 .가 있을 수도 있고 그 뒤에 영숫자가 와야함
			// @: @가 반드시 하나
			// 도메인 부분도 동일한 패턴
			// \.: .이 하나 있어야함
			// \.[a-zA-z]{2,3}: 최상위 도메인은 점(.) + 알파벳 2~3글자
			
			// (참고) 더 간단하면서 널리 쓰이는 이메일 검증 패턴
			// (참고) 더 간단하면서 널리 쓰이는 이메일 검증 패턴
			const regExpEmail = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
			
			// 검증
			if(!regExpId.test(id)){
				alert("아이디는 문자로 시작해주세요!");
				return;
			}
			
			if(!regExpPasswd.test(passwd)){
				alert("숫자만 4자리 이상")
				return;
			}
			
			if(!regExpName.test(name)){
				alert("이름은 한글로 3~4자 입력하세요.")
				return;
			}
			
			/* if(phone2.length <= 4 && phone3.length <= 4){
				phone = phone1 + "-" + phone2 + "-" + phone3;
			} */
			if(isNaN(phone2)|| isNaN(phone3)){
				alert("숫자만 입력하세요!")
				return;
			}
			if(!regExpPhone.test(phone)){
				alert("입력한 숫자의 개수가 맞지 않습니다!")
				return;
			}
			if(!regExpEmail.test(email)){
				alert("이메일 입력을 확인해주세요!")
				return;
			}
			
			form.submit();
		}
	</script>
</body>
</html>