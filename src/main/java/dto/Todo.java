package dto;

import java.util.Objects;

public class Todo {
	
	private long id;
	private String task;
	private boolean isDone; // 기본값이 false
	
	
	//getter setter
	public void setId(long id) {
		this.id = id;
	}

	public long getId() {
		return id;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public boolean isDone() {
		return isDone;
	}

	public void setDone(boolean isDone) {
		this.isDone = isDone;
	}
	
	//constructor
	public Todo(String task) {
		this.task = task;
	}
	
	
	
	// generate hashcode, equals
	// db에서도 동작하게끔 하게 붙여준다.
	// 값이 같으면 같은id다 라고 해주는 과정 
	
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		return id == other.id;
	}
	
	
	

	//내용을 확인하고 싶다 하면 toString
	@Override
	public String toString() {
		return "Todo [id=" + id + ", task=" + task + ", isDone=" + isDone + "]";
	}

	
}
