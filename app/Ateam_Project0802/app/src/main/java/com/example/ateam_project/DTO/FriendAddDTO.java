package com.example.ateam_project.DTO;

public class FriendAddDTO {
    String email;
    String name;
    String pw;
    String job;
    String join_date;

    public FriendAddDTO(String email, String name, String pw, String job) {
        this.email = email;
        this.name = name;
        this.pw = pw;
        this.job = job;
    }

    public FriendAddDTO(String email, String name, String pw, String job, String join_date) {
        this.email = email;
        this.name = name;
        this.pw = pw;
        this.job = job;
        this.join_date = join_date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
}
