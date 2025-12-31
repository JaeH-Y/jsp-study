<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/fileuploadProcess" method="post" enctype="multipart/form-data">
		<h3>파일 업로드 연습하기!</h3>
		<input type="file" name="uploadFiles" multiple="multiple"><br>
		<button type="submit">업로드 하기</button>
	</form>
</body>
</html>