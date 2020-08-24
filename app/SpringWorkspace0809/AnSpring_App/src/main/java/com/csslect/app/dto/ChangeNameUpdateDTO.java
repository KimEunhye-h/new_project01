package com.csslect.app.dto;

public class ChangeNameUpdateDTO {
	String name;
	String oldName;
	
	
	public ChangeNameUpdateDTO() {}

	public ChangeNameUpdateDTO(String name, String oldName) {
		super();
		this.name = name;
		this.oldName=oldName;
	}
	public String getOldName() {
		return oldName;
	}

	public void setOldName(String oldName) {
		this.oldName = oldName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
