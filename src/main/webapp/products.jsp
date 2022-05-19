<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<!-- class에 있는걸 id의 이름으로 사용하겠다. -->
<jsp:useBean id = "repository" class ="dao.ProductRepository" scope = "session"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<%
	//6줄 => ProductRepository repository = new ProductRepository() 로 해도 된다. 
	List<Product> products = repository.getAllProducts();
	for (Product product : products){
		out.println(product + "<br><br>");
	}
	
	%>
</body>
</html>