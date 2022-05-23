<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- 보통 assets에 css파일 몰아 넣는다. -->
<link rel="stylesheet" type="text/css" href="assets/css/todolist.css" />
<link rel="stylesheet" type="text/css" href="assets/css/form.css" />
<link rel="stylesheet" type="text/css" href="assets/css/todoitem.css" />
<script src="assets/js/common.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Todo List</title>
<script>
	function setDone(id) {
		$.ajax({
			url : "processToggle.jsp",
			type : "post",
			data : {"id" : id}, 
			// 수행 완료시에 success 수행 
			success: function(data){
				// form으로 하면 편하긴 하다고 하심
				// 추가가 잘 되면 새로고침해서 원래 새로고침 눌러줘야하는걸 자동으로 보여주게끔 
				window.location.reload();
			}
		});
	}
	function addTodo() {
		//post 방식으로 processAddTodo.jsp?task=어쩌구 
					
		let task = $("#text").val();//input된 값 가져오기 
				
		$.ajax({
			url : "processAddTodo.jsp",
			type : "post",
			data : {"task" : task}, 
			// 수행 완료시에 success 수행 
			success: function(data){
				// form으로 하면 편하긴 하다고 하심
				// 추가가 잘 되면 새로고침해서 원래 새로고침 눌러줘야하는걸 자동으로 보여주게끔 
				window.location.reload();
			}
		});
	}

	function remove(id) {
		$.ajax({
			url : "processRemoveTodo.jsp",
			type : "post",
			data : {"id" : id}, 
			// 수행 완료시에 success 수행 
			success: function(data){
				window.location.reload();
			}
		});
	}
</script>


</head>

<body>
	<%
	TodoRepository repository = TodoRepository.getInstance();
	//out.println(repository.getTodos());
	List<Todo> todos = repository.getTodos();
	%>
	<div class="todo-list-template">
		<div class="title">오늘 할 일</div>

		<section class="form-wrapper">


			<div class="form">
				<input name="text" id="text" />
				<div id="add_button" class="create-button" onclick="addTodo()">추가</div>
			</div>
		</section>

		<section class="todos-wrapper">

			<%
			for (Todo todo : todos) {
			%>
			<div class="todo-item" onclick="setDone(<%=todo.getId()%>)">
				<div class="remove" onclick="remove(<%=todo.getId()%>)">&times;</div>
				<div class="todo-text <%=todo.isDone() ? "checked" : ""%>"><%=todo.getTask()%></div>
				<%
				if (todo.isDone()) {
				%>
				<div class="check-mark">&#x2713;</div>
				<%
				}
				%>
			</div>
			<%
			}
			%>

		</section>
	</div>
</body>

</html>