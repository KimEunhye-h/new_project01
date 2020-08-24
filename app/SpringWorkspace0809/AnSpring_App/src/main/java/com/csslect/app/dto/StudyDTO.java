package com.csslect.app.dto;

public class StudyDTO {
	private String name;
	private String subject;
	private String time;
	private String today;
	
	public StudyDTO() {
		
	}
	
	public StudyDTO(String name, String time) {
		super();
		this.name = name;
		this.time = time;
	}

	public StudyDTO(String name, String subject, String time, String today) {
		super();
		this.name = name;
		this.subject = subject;
		this.time = time;
		this.today = today;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	
	
	
}
