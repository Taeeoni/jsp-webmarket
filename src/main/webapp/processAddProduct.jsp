<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>

<%
request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));

Product newProduct = new Product(productId, name, unitPrice);

ProductRepository repository = ProductRepository.getInstance();
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");

%>    
