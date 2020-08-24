package com.csslect.app.dto;

public class SubjectDTO {
	String name,subject,subjectTime,today;
	public SubjectDTO() {}
	public SubjectDTO(String name,String subject, String subjectTime, String today) {
		super();
		this.name = name;
		this.subject = subject;
		this.subjectTime = subjectTime;
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
	public String getSubjectTime() {
		return subjectTime;
	}
	public void setSubjectTime(String subjectTime) {
		this.subjectTime = subjectTime;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	
}
