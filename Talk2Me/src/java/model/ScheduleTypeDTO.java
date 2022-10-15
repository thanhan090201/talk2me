/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author tuan vu
 */
public class ScheduleTypeDTO {

    private String name;
    private String title;
    private float price;
    private int schedule_Id;

    public ScheduleTypeDTO(String name, String title, float price, int schedule_Id) {
        this.name = name;
        this.title = title;
        this.price = price;
        this.schedule_Id = schedule_Id;
    }

    public int getSchedule_Id() {
        return schedule_Id;
    }

    public void setSchedule_Id(int schedule_Id) {
        this.schedule_Id = schedule_Id;
    }

    public ScheduleTypeDTO(String name, String title, float price) {
        this.name = name;
        this.title = title;
        this.price = price;
    }

    public ScheduleTypeDTO() {
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

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
