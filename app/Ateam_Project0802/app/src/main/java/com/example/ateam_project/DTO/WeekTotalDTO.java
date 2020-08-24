package com.example.ateam_project.DTO;

import java.io.Serializable;

public class WeekTotalDTO implements Serializable {
    String subject;
    String total;

    public WeekTotalDTO(String subject, String total) {
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