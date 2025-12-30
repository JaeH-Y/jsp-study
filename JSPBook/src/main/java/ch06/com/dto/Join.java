package ch06.com.dto;

import java.util.Arrays;

public class Join {
	private String id;
	private String pw;
	private String name;
	private String telNum;
	private String gender;
	private String[] hobbies;
	
	
	public Join() {
		super();
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getTelNum() {
		return telNum;
	}


	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String[] getHobbies() {
		return hobbies;
	}


	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}


	@Override
	public String toString() {
		return "Join [id=" + id + ", pw=" + pw + ", name=" + name + ", telNum=" + telNum + ", gender=" + gender
				+ ", hobbies=" + Arrays.toString(hobbies) + "]";
	}
	
	
}
