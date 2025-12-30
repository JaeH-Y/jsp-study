<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 데이터 전송 받기 -->
	<%
		Enumeration<String> en = request.getParameterNames();
		StringBuffer buffer = new StringBuffer();
		int count = 0;
	%>
	
	<table border = "1">
		<%
			while(en.hasMoreElements()){
				String name = en.nextElement();
				String[] values = request.getParameterValues(name);
				String value = null;
				if(values.length > 1){
						buffer.setLength(0);
						for(int i = 0; i < values.length; i++){
							if(i != 0){
								if("tel".equals(name)){
									buffer.append("-");
								}
								else buffer.append(", ");
							}
							buffer.append(values[i]);
						}
						value = buffer.toString();
				}
				else{
					value = request.getParameter(name);
				}
				
		%>
		<tr>
			<th><%= name %></th>
			<td><%= value %></td>
		</tr>
		<%
			}
		%>
	</table>
	
	<button type="button" onclick="history.back()">이전 페이지</button>
</body>
</html>