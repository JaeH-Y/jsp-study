<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<%!
		String getNowDateInCalendar(Calendar cal){
			int year = cal.get(Calendar.YEAR);
			int mon = cal.get(Calendar.MONTH) + 1;
			int day = cal.get(Calendar.DAY_OF_MONTH);
			int hours = cal.get(Calendar.HOUR);
			int mins = cal.get(Calendar.MINUTE);
			int secs = cal.get(Calendar.SECOND);
			StringBuilder builder = new StringBuilder();
			builder.append(year);
			builder.append("년 ");
			builder.append(mon);
			builder.append("월 ");
			builder.append(day);
			builder.append("일 ");
			builder.append(hours);
			builder.append("시 ");
			builder.append(mins);
			builder.append("분 ");
			builder.append(secs);
			builder.append("초 ");
			
			return builder.toString(); 		
		}
	%>
<body>
	<%
		Calendar cal = Calendar.getInstance();
	%>
	<%= getNowDateInCalendar(cal) %>
</body>
</html>