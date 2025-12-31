package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import dao.BookRepository;
import dto.Book;

/**
 * Servlet implementation class ProcessAddBookServlet
 */
@WebServlet("/processAddBook")

@MultipartConfig(
	maxFileSize = 1024 * 1024 * 10,
	maxRequestSize = 1024 * 1024 * 50
)
public class ProcessAddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessAddBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");	// 톰캣 10+ 부터였나 생략 가능
		
		// 일반 텍스트 데이터 처리
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
		int price = 0;
		if(unitPrice != null && !unitPrice.isBlank()){ // 빈 문자열 확인
			price = Integer.parseInt(unitPrice);
		}
		// 도서 재고 수량이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경
		long stock = 0;
		if(unitsInStock != null && !unitsInStock.isBlank()){ // 빈 문자열 확인
			stock= Long.parseLong(unitsInStock);
		}
		
		// 파일 업로드 처리
		Part part = request.getPart("bookImg");
		String fileName = "";
		
		if(part != null && part.getSize() > 0) {
			// 파일 이름 가져오기
			fileName = part.getSubmittedFileName();
			
			// 업로드 폴더 경로
			// 외부 업로드 폴더 사용
			String uploadPath = "C:/upload";
			// JSP 페이지에서 /images/파일명으로 접근하려면 톰캣 설정(외부 폴더 매핑)을 추가해야함
			// server.xml 또는 프로젝트별 context.xml에 설정
			
			// 업로드 폴더 없으면 생성
			File folderPath = new File(uploadPath);
			if(!folderPath.exists()) folderPath.mkdirs();
			
			// 파일 저장
//			UUID uuid = UUID.randomUUID();
			String filePath = folderPath + File.separator + fileName;
			part.write(filePath);
			
		}
		
		// Book 객체 생성 및 저장
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
		newBook.setFilename(fileName);
		
		BookRepository dao = BookRepository.getInstance();
		dao.addBook(newBook);
		
		// 등록 후 도서 목록 페이지로 리다이렉트
		response.sendRedirect("/BookMarket/books.jsp");
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
