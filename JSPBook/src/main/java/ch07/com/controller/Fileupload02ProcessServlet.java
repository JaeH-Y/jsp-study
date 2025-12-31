package ch07.com.controller;

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
import java.util.Collection;
import java.util.Iterator;

/**
 * Servlet implementation class Fileupload01ProcessServlet
 */
@WebServlet("/fileupload02Process")	// url 매핑

// 서블릿 3.0에서 도입된 파일 업로드(멀티파트 요청) 처리를 위한 어노테이션
// 이걸 선언하면 multipart/form-data 형식의 요청을 정상적으로 파싱 가능
@MultipartConfig(
//	location = "D:/upload", // 최종 저장될 업로드 경로(폴더)
	fileSizeThreshold = 1024 * 1024 * 1, // 메모리 임시 저장 임계값(1MB) -> 파일을 메모리에 임시 저장할 최대 크기
	maxFileSize = 1024 * 1024 * 10, // 업로드 파일의 최대 크기(10MB) -> 업로드가 가능한 개별 파일의 최대 크기
	maxRequestSize = 1024 * 1024 * 50 // 전체 요청 크기(50MB) -> 요청 전체(모든 파일 + 모든 일반 폼 필드)의 총합 크기
)

public class Fileupload02ProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileupload02ProcessServlet() {
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");	// 생략 가능
		
		// 기본 세팅
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 서블릿이 클라이언트(브라우저)에게 HTML 응답을 직접 출력하기 위해 사용하는 객체
		
		String uploadPath = "C:/upload";
				
		File uploadDir = new File(uploadPath);
		if(!uploadDir.exists()) uploadDir.mkdirs();
		
		// 2-1. 일반 데이터 가져오기
		String name1 = request.getParameter("name");
		String subject1 = request.getParameter("subject");
		String name2 = request.getParameter("name");
		String subject2 = request.getParameter("subject");
		String name3 = request.getParameter("name");
		String subject3 = request.getParameter("subject");
		
		// 2-2. 여러개의 파일 데이터 가져오기
		// 서블릿 3.0 표준 API 사용하기
		// Part: 업로드된 파일 또는 폼 데이터를 표현하는 객체(임시 저장 파일)
//		Part filePart1 =  request.getPart("uploadFile1");
//		Part filePart2 =  request.getPart("uploadFile2");
//		Part filePart3 =  request.getPart("uploadFile3");
		
		// 한번에 가져오기
		Collection<Part> fileParts = request.getParts();	// 폼에 포함된 모든 input 요소를 Part 객체로 반환
		
		for(Part part : fileParts) {
			// 파일만 필터링 하기
			// 방법 1: name 속성으로 필터링
//			if(part.getName().startsWith("uploadFile")) {	// input 태그의 name 속성 확인
//				String fileName = part.getSubmittedFileName();	// 원본 파일 이름
//			}
			
			// 방법 2: getSubmittedFileName으로 필터링
			// 사실상 그러면 방법 2로 다 되겠군 ㅇㅇ
			String fileName = part.getSubmittedFileName(); 
			if(fileName == null || fileName.isBlank()) continue;
			
			part.write(uploadPath + File.separator + fileName);
		}
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
