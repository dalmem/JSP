package com.session;

public class User {
	//은닉된 클래스로 생성
	private String id;
	private String pw;
	private String name;
	private String bday;
	
	public User() {		
	}

	public User(String id, String pw, String name, String bday) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.bday = bday;
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

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}
	
	
	
}
