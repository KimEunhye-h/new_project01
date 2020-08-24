package com.csslect.app.dto;

public class SubjectDayTotalDTO {
	private String name,time;

	public SubjectDayTotalDTO(String name, String time) {
		super();
		this.name = name;
		this.time = time;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
	
}
