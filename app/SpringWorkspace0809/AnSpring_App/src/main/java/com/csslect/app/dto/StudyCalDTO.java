package com.csslect.app.dto;

public class StudyCalDTO {
	String subject;
	String total;
	
	public StudyCalDTO() {}

	public StudyCalDTO(String subject, String total) {
		super();
		this.subject = subject;
		this.total = total;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}
}
