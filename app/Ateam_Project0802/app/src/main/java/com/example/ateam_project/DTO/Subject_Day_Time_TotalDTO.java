package com.example.ateam_project.DTO;

import java.io.Serializable;

public class Subject_Day_Time_TotalDTO implements Serializable {
    String time;
    String name;


    public Subject_Day_Time_TotalDTO(String name,String time) {

        this.name = name;
        this.time = time;
    }

    public Subject_Day_Time_TotalDTO(String name) {
        this.name = name;
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
}
