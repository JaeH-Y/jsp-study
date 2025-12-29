package ch04.com.dao;

// 데이터 전당룔 자바빈(스프링에서는 DTO)
// JSP에서 자바빈의 주 용도
public class Person {
	private int id = 20251229;
	private String name = "홍길순";
	
	public Person() {
		super();
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
