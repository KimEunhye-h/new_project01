package com.example.ateam_project.DTO;

public class Admin_Member_ListDTO {
    String name, email, join_date;

    public Admin_Member_ListDTO(String name, String email, String join_date) {
        this.name = name;
        this.email = email;
        this.join_date = join_date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getJoin_date() {
        return join_date;
    }

    public void setJoin_date(String join_date) {
        this.join_date = join_date;
    }
}
