package controller;

import java.io.IOException;

import dao.TodoRepository;
import dto.Todo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 톰캣에 컨트롤러의 존재를 노출 
// urlPatterns 에 있는게 있다면 내가 처리하겠다!
@WebServlet(name = "TodoController", 
	urlPatterns = {"/addTodo.do", "/toggleTodo.do", "/removeTodo.do"})
public class TodoController extends HttpServlet {
	// jsp는 debugging이 어렵다. (html에서 에러가나는지 java에서 에러가나는지 모른다.)
	
	
	//get이나 set 동작이 있을때 여기를 거쳐서 나가게끔 (process 과정)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 요청 주소 (예를 들면 processAddTodo.do)
		String command = req.getRequestURI().substring(req.getContextPath().length());
		TodoRepository repository = TodoRepository.getInstance();
		
		if(command.equals("/addTodo.do")) {
			String task = req.getParameter("task");
			Todo todo = new Todo(task);
			repository.addTodo(todo);
			
		} else if (command.equals("/toggleTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.toggle(id);
			
		} else if (command.equals("/removeTodo.do")) {
			long id = Long.parseLong(req.getParameter("id"));
			repository.remove(id);
		}
		
		//todos 내용을 받아서 꽂아버릴 수 있다.
		req.getSession().setAttribute("todos", repository.getTodos());
		
		// 리다이렉트하면서 주소창에는 노출을 하지 않는다.
		req.getRequestDispatcher("todolist.jsp").forward(req, resp);
	}
	
	
}
