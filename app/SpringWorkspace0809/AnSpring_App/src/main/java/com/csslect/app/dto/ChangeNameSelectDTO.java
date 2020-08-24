package com.csslect.app.dto;

public class ChangeNameSelectDTO {
	String name;
	
	public ChangeNameSelectDTO() {}

	public ChangeNameSelectDTO(String name) {
		super();
		this.name = name;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
