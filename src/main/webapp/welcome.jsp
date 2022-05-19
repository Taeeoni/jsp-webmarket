<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<title>Welcome</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<%!
	// 변수, 메소드 선언
	String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	%> 
	<%
	// 그냥 java 코드 , 변수선언도 됨..
	//out.println("<h1>Hello~~ World</h1>");
	%>
	
	<%  //https://www.w3schools.com/bootstrap5/bootstrap_jumbotron.ph
	   // 전체 패딩 5 (많이) 3 (보통) 
	   // bg-primary : 기본 색상 %>
	<div class="p-5 bg-primary text-white">
	<!-- container: 좌우 가운데 정렬 -->
	    <div class="container">
	    	<!-- display-3 : 큰 글자중에 보통 크기 -->
	        <h1 class="display-3"><%= greeting %></h1>
	    </div>
	</div>
	

	<div class="container">

	    <div class="text-center">
	    	<% 
	    	//1초에 한번씩 새로고침 (현재시간을 1초간 새로고침)
	    	response.setIntHeader("Refresh", 1);
	    	
		      Date today = new Date();
		      SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a") ;
		      out.println("현재 접속 시간: " + format.format(today));
		    %>
	        <h3><%= tagline %></h3>

	    </div>
	</div>
	
	<footer>
		<p>&copy; webMarket</p>
	</footer>
	
</body>
</html>