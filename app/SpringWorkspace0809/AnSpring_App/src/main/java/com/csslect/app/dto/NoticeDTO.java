package com.csslect.app.dto;

public class NoticeDTO {
	private String name,title,content,today;

	public NoticeDTO(String name, String title, String content, String today) {
		super();
		this.name = name;
		this.title = title;
		this.content = content;
		this.today = today;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}
	
	
}
