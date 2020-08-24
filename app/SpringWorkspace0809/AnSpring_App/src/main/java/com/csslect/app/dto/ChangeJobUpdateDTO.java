package com.csslect.app.dto;

public class ChangeJobUpdateDTO {
	String job;
	String name;
	
	
	public ChangeJobUpdateDTO() {}

	public ChangeJobUpdateDTO(String job, String name) {
		super();
		this.job=job;
		this.name = name;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
