package com.csslect.app.dto;

public class FriendDTO {
	String user_email;
	String name;
	String email;
	String job;
	
	public FriendDTO(String user_email, String name, String email, String job) {
		super();
		this.user_email = user_email;
		this.name = name;
		this.email = email;
		this.job = job;
	}
	
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	
	
	
}

