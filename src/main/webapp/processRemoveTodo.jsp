<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.TodoRepository" %>

<%

long id = Long.parseLong(request.getParameter("id"));

TodoRepository repository = TodoRepository.getInstance();
repository.remove(id);

response.sendRedirect("todolist.jsp");

%>    
