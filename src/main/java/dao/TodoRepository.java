package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Todo;

public class TodoRepository {
	public static long currentid = 0;
	
	//list가 날라가면 안되고 계속 살아있어야 한다 -> new(X)
	private List<Todo> todos = new ArrayList<>();
	
	//인스턴스 사용할시에 new 해주지 않고 사용 가능 
	private static TodoRepository instance = new TodoRepository();
	public static TodoRepository getInstance() {
		return instance;
	}
	
	public List<Todo> getTodos(){
		return todos;
	}
	
	public void addTodo(Todo todo) {
		todo.setId(currentid);//id값 전달 
		currentid++;//id 번호를 하나씩 올려준다.
		todos.add(todo); //
	}
	
	
	public void toggle(long id) {
		for(Todo todo : todos) {
			if(todo.getId() == id) {
				todo.setDone(!todo.isDone());
				break;
			}
		}
	}
	
	public void remove(long id) {
		Todo removeTodo = null;
		for(Todo todo : todos) {
			if(todo.getId() == id) {
				removeTodo = todo;
				break;
			}
		}
		
		todos.remove(removeTodo);
	}
}
