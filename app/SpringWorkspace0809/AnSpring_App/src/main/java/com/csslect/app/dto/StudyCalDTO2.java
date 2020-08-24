package com.csslect.app.dto;

public class StudyCalDTO2 {
	String name, subject, time, today;
	
	public StudyCalDTO2() {}

	public StudyCalDTO2(String name, String subject, String time, String today) {
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
