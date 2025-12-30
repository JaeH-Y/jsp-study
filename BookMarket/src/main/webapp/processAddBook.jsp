<%@page import="dao.BookRepository"%>
<%@page import="java.util.Enumeration"%>
<%@page import="dto.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- session이 연결되는 동안 도서 데이터를 공유하기 위해 사용 -->
<%-- <jsp:useBean id="book" class="dto.Book" scope="request"/> --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
</head>
<body>
	<!-- 신규 도서 등록 처리 페이지 만들기 -->
	<%
		Enumeration<String> en = request.getParameterNames();
		
		String bookId = request.getParameter("bookId");
		String name = request.getParameter("name");
		String unitPrice = request.getParameter("unitPrice");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String releaseDate = request.getParameter("releaseDate");	
		String description = request.getParameter("description");	
		String category = request.getParameter("category");
		String unitsInStock = request.getParameter("unitsInStock");
		String condition = request.getParameter("condition");
		
		// 간단한 기본 유효성 검사 추가
		// 도서 가격이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경
		int price;
		if(unitPrice.isBlank()){ // 빈 문자열 확인
			price = 0;
		}
		else{
			price = Integer.parseInt(unitPrice);
		}
		// 도서 재고 수량이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경
		long stock;
		if(unitsInStock.isBlank()){ // 빈 문자열 확인
			stock = 0;
		}
		else{
			stock= Long.parseLong(unitsInStock);
		}
		
		Book newBook = new Book();
		newBook.setBookId(bookId);
		newBook.setName(name);
		newBook.setUnitPrice(price);
		newBook.setAuthor(author);
		newBook.setPublisher(publisher);
		newBook.setDescription(description);
		newBook.setCategory(category);
		newBook.setUnitsInStock(stock);
		newBook.setCondition(condition);
		
		BookRepository dao = BookRepository.getInstance();
		dao.addBook(newBook);
		
		// books.jsp 페이지로 강제 이동하도록 작성
		response.sendRedirect("./books.jsp");
	%>	
</body>
</html>