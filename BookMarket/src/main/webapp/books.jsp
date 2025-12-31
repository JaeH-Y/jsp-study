<%@page import="dao.BookRepository"%>
<%@page import="dto.Book"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- session이 연결되는 동안 도서 데이터를 공유하기 위해 사용 -->
<%-- <jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>도서 목록</title>
	<!-- 부트스트랩 연결 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
	
</head>
<body>
	<%!
		String greeting = "도서 쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web Market!";
	%>
	<div class="container py-4">
		<%@ include file ="./menu.jsp" %>
    
    <!-- 중간 타이틀 영역 -->
    <!-- 동적 include로 변경(title.jsp) -->
    <jsp:include page="title.jsp">
    	<jsp:param value="도서목록" name="title"/>
    	<jsp:param value="BookList" name="content"/>
    </jsp:include>
      
    <%
    	/* ArrayList<Book> bookList = bookDAO.getAllBooks(); */
    	// BookRepository 공유 객체로 변경
    	// 왜? 자바빈을 사용하면 해당 객체가 scope 내에 존재하면 재사용하고
    	// 존재하지 않으면 새롭게 생성하기 떄문에 객체 내 데이터가 불일치 발생
    	BookRepository dao = BookRepository.getInstance();
    	ArrayList<Book> bookList = dao.getAllBooks();
    %>
    <!-- 본문 영역 -->
    <div class="row align-items-md-stretch text-center">
    	<%
    		// 반복문 시작
    		for(int i = 0; i < bookList.size(); i++){
    			Book book = bookList.get(i);
    		
    	%>
    	<!-- BootStrap은 한 컬럼에 grid를 12개 소유함
    		=> 3개씩 표시하고 싶다면 col-md-12를 col-md-4로 변경
    	-->
      <div class="col-md-4">
        <div class="h-100 p-2">
        	<!-- 도서 정보 -->
        	
        	<!-- 이처럼 내부 폴더의 이미지를 활용하는건 오로지 학습용 -->
        	<%-- <img alt="도서이미지" src="./resources/images/<%= book.getFilename() %>" style="width: 250px; height: 350px;"> --%>
        	
        	<!-- 외부 폴더 사용 시 -->
        	<img alt="도서이미지" src="<%= request.getContextPath()%>/images/<%= book.getFilename() %>" style="width: 250px; height: 350px;">
        	
        	<h5><b><%= book.getName() %></b></h5>
        	<p>
        		<%= book.getAuthor() %>
        		<br>
        		<%= book.getPublisher() %> | <%= book.getReleaseDate() %>
        	</p>
        	<p><%= book.getDescription().substring(0,60) %>...</p>
        	<p><%= book.getUnitPrice() %>원</p>
        	<p>
        		<a href="./book.jsp?id=<%=book.getBookId()%>&ind=<%= bookList.indexOf(book) %>" class="btn btn-secondary" role="button">
        		상세정보 &raquo;
        		</a>
        	</p>
        </div>
      </div>
      <%
    		}	// 반복문 종료
      %>
 		</div>
 		
 		<%@ include file ="./footer.jsp" %>
 		
	</div>
</body>
</html>