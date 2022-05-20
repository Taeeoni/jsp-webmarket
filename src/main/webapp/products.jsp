<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!-- class에 있는걸 id의 이름으로 사용하겠다. -->
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>

		<div class="p-5 bg-primary text-white">
	<!-- container: 좌우 가운데 정렬 -->
	    <div class="container">
	    	<!-- display-3 : 큰 글자중에 보통 크기 -->
	        <h1 class="display-3">상품 목록</h1>
	    </div>
	</div>
	
	<%
	//6줄 => ProductRepository repository = new ProductRepository() 로 해도 된다. 
	//Product 클래스를 사용하기위해 repository 변수를 이용해서 객체를 불러온다.
	
	ProductRepository repository = ProductRepository.getInstance();
	List<Product> products = repository.getAllProducts();
	
	%>
	
	<div class="container">
	    <div class="row text-center">
	    <%
	    for (Product product : products){
	    %>
	    <div class="col-md-4">
	    	<h3><%= product.getName() %></h3>
	    	<p><%= product.getDescription() %></p>
	    	<p><%= product.getUnitPrice() %></p>
	    	<p>
	    		<a class = "btn btn-secondary" role="button" href="./product.jsp?id=<%= product.getProductId() %>">
	    			상세정보 &raquo;
	    		</a>
	    	</p>
	    </div>
	    <%
	    }
	    %>
	    </div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>