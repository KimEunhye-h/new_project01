package com.example.ateam_project.DTO;

import java.io.Serializable;

public class Dday_ItemDTO implements Serializable {
    String name,title, pickerdate, d_day, diff_day;

    public Dday_ItemDTO(String title, String pickerdate, String d_day) {
        this.title = title;
        this.pickerdate = pickerdate;
        this.d_day = d_day;
    }
    public Dday_ItemDTO(String title, String pickerdate, String d_day, String diff_day) {
        this.title = title;
        this.pickerdate = pickerdate;
        this.d_day = d_day;
        this.diff_day = diff_day;
    }

    public Dday_ItemDTO(String name, String title, String pickerdate, String d_day, String diff_day) {
        this.name = name;
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
