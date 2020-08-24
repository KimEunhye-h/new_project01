package com.csslect.app.dto;

public class MemberListDTO {
	String email, name, join_date;

	
	public MemberListDTO(String email, String name, String join_date) {
		super();
		this.email = email;
		this.name = name;
		this.join_date = join_date;
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


	public String getJoin_date() {
		return join_date;
	}


	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	
	

}
