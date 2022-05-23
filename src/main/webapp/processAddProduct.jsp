<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>

<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String description = request.getParameter("description");
int unitPrice = Integer.parseInt(request.getParameter("price"));

Product newProduct = new Product(name, description, unitPrice);

ProductRepository repository = ProductRepository.getInstance();
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");

%>    
