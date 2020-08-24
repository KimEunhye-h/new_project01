package com.example.ateam_project.DTO;

import java.io.Serializable;

public class SubjectDTO implements Serializable {
    String name,subject,subjectTime,today;
    int subjectStart;

    public SubjectDTO(String name) {
        this.name = name;
    }

    public SubjectDTO(String subject, String subjectTime, int subjectStart) {
        this.subject = subject;
        this.subjectTime = subjectTime;
        this.subjectStart = subjectStart;
    }

    public SubjectDTO(String subject, String subjectTime, String today, int subjectStart) {
        this.subject = subject;
        this.subjectTime = subjectTime;
        this.today = today;
        this.subjectStart = subjectStart;
    }

    public SubjectDTO(String subject, String subjectTime, String today) {
        this.subject = subject;
        this.subjectTime = subjectTime;
        this.today = today;
    }

    public SubjectDTO(String name, String subject, String subjectTime, String today) {
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

    public String getToday() {
        return today;
    }

    public void setToday(String today) {
        this.today = today;
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

    public int getSubjectStart() {
        return subjectStart;
    }

    public void setSubjectStart(int subjectStart) {
        this.subjectStart = subjectStart;
    }
}
