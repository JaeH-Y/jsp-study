<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post" name="loginform">
		<p>
			아이디: <input type="text" name="id" required>
		</p>
		<p>
			비밀번호: <input type="password" name="pw" required>
		</p>
		<button type="submit" id="formSubmit" onclick="checkform(event)">제출</button>
	</form>
	
	
	<script type="text/javascript">
		
		function checkform(e){
			const form = document.loginform
			
			if(form.id.value == ''){
				alert("아이디 입력");
				e.preventDefault();
				form.id.focus();
				return;
			}
			if(form.pw.value == ''){
				alert("비밀번호 입력");
				e.preventDefault();
				form.pw.focus();
				return;
			}
		}
		
		
	</script>
	
</body>
</html>