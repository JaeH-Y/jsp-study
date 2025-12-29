<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String title = request.getParameter("title");
	
	String content = request.getParameter("content");
%>
<div class="p-5 mb-4 bg-body-tertiary rounded-3">
	<div class="container-fluid py-5">
		<h1><%= title %></h1>
		<p><%= content %></p>
	</div>	
</div>
