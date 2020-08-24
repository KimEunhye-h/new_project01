package com.example.ateam_project.DTO;

import java.io.Serializable;

public class StudyCalDTO implements Serializable {
    String subject;
    String time;
    String name;
    String today;

    public StudyCalDTO(String subject, String time, String name, String today) {
        this.subject = subject;
        this.time = time;
        this.name = name;
        this.today = today;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getToday() {
        return today;
    }

    public void setToday(String today) {
        this.today = today;
    }
}