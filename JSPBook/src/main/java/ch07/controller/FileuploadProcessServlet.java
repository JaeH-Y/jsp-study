package ch07.controller;

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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collection;
import java.util.UUID;

/**
 * Servlet implementation class FileuploadProcessServlet
 */
@WebServlet("/fileuploadProcess")

@MultipartConfig(
	maxFileSize = 1024 * 1024 * 10, // 업로드 파일의 최대 크기(10MB) -> 업로드가 가능한 개별 파일의 최대 크기
	maxRequestSize = 1024 * 1024 * 50
)
public class FileuploadProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileuploadProcessServlet() {
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
		
		// 기본 세팅
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 서블릿이 클라이언트(브라우저)에게 HTML 응답을 직접 출력하기 위해 사용하는 객체
		
		String folderPath = "C:/upload";
		File path = new File(folderPath);
		
		if(!path.exists()) path.mkdirs();
		
		Collection<Part> parts = request.getParts();
		for(Part part : parts) {
			String fileName = part.getSubmittedFileName();
			if(fileName == null || fileName.isEmpty()) continue;
			
			int fileshape = fileName.lastIndexOf('.');
			if(fileshape == -1) continue;
			
			LocalDateTime LDT = LocalDateTime.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy-MM-dd");
			String nowTime = LDT.format(formatter);
			UUID uuid = UUID.randomUUID();
			String filePath = folderPath + File.separator + nowTime + uuid + fileName.substring(fileshape);
			part.write(filePath);
			
			out.println("파일 업로드 완료:" + fileName + "<br>");
			out.println("파일 주소:" + filePath + "<br>");
		}
		
		out.print("request 탐색 끝");
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
