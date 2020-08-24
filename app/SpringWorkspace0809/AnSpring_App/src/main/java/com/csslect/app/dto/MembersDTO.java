package com.csslect.app.dto;

public class MembersDTO {
	public MembersDTO(String email, String name, String pw, String job, String admin) {
		super();
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.job = job;
		this.admin = admin;
	}

	String email;
	String name;
	String pw;
	String job,join_date,admin;
	
	public MembersDTO(String email, String name, String pw, String job,String join_date,String admin) {
		super();
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.job = job;
		this.join_date=join_date;
		this.admin=admin;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
	
}