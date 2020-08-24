package com.example.ateam_project.DTO;

import java.io.Serializable;

public class TimeDTO implements Serializable {
    String subject, sudjecttime, day;
    public  TimeDTO(){}
    public TimeDTO(String subject, String sudjectTime, String day ){
        this.subject = subject;
        this.sudjecttime = sudjectTime;
        this.day = day;

    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSudjecttime() {
        return sudjecttime;
    }

    public void setSudjecttime(String sudjecttime) {
        this.sudjecttime = sudjecttime;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
}
