package dto;

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
	
	
	//내용을 확인하고 싶다 하면 toString
	@Override
	public String toString() {
		return "Todo [id=" + id + ", task=" + task + ", isDone=" + isDone + "]";
	}

	
}
