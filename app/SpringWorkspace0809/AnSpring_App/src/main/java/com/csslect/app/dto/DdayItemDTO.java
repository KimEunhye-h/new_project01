package com.csslect.app.dto;

public class DdayItemDTO {
	String name,title, pickerdate, d_day, diff_day;
	
	public DdayItemDTO() {}

	public DdayItemDTO(String name, String title, String pickerdate, String d_day, String diff_day) {
		super();
		this.name = name;
		this.title = title;
		this.pickerdate = pickerdate;
		this.d_day = d_day;
		this.diff_day = diff_day;
	}

	public DdayItemDTO(String title, String pickerdate, String d_day) {
		super();
		this.title = title;
		this.pickerdate = pickerdate;
		this.d_day = d_day;
	}
	
	public DdayItemDTO(String title, String pickerdate, String d_day, String diff_day) {
		super();
		this.title = title;
		this.pickerdate = pickerdate;
		this.d_day = d_day;
		this.diff_day = diff_day;
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

	public String getPickerdate() {
		return pickerdate;
	}

	public void setPickerdate(String pickerdate) {
		this.pickerdate = pickerdate;
	}

	public String getD_day() {
		return d_day;
	}

	public void setD_day(String d_day) {
		this.d_day = d_day;
	}

	public String getDiff_day() {
		return diff_day;
	}

	public void setDiff_day(String diff_day) {
		this.diff_day = diff_day;
	}
	
	
}
