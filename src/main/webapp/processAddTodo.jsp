<%@page import="dto.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.TodoRepository" %>

<%

String task = request.getParameter("task");

Todo todo = new Todo(task);

TodoRepository repository = TodoRepository.getInstance();
repository.addTodo(todo);

response.sendRedirect("todolist.jsp");

%>    
