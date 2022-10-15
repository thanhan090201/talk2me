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
public class ScheduleDTO {
    private int schedule_Id;
    private int schedule_Type_Id;
    private String title;
    private String description_Schedule;
    private Date create_Date_Schedule;
    private float price;
    private boolean status_Schedule;

    public ScheduleDTO() {
    }

    public ScheduleDTO(int schedule_Id, int schedule_Type_Id, String title, String description_Schedule, Date create_Date_Schedule, float price, boolean status_Schedule) {
        this.schedule_Id = schedule_Id;
        this.schedule_Type_Id = schedule_Type_Id;
        this.title = title;
        this.description_Schedule = description_Schedule;
        this.create_Date_Schedule = create_Date_Schedule;
        this.price = price;
        this.status_Schedule = status_Schedule;
    }

    public int getSchedule_Id() {
        return schedule_Id;
    }

    public void setSchedule_Id(int schedule_Id) {
        this.schedule_Id = schedule_Id ;
    }

    public int getSchedule_Type_Id() {
        return schedule_Type_Id ;
    }
 
    public void setSchedule_Type_Id(int schedule_Type_Id) {
        this.schedule_Type_Id = schedule_Type_Id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription_Schedule() {
        return description_Schedule;
    }

    public void setDescription_Schedule(String description_Schedule) {
        this.description_Schedule = description_Schedule;
    }

    public Date getCreate_Date_Schedule() {
        return create_Date_Schedule;
    }

    public void setCreate_Date_Schedule(Date create_Date_Schedule) {
        this.create_Date_Schedule = create_Date_Schedule;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean isStatus_Schedule() {
        return status_Schedule;
    }

    public void setStatus_Schedule(boolean status_Schedule) {
        this.status_Schedule = status_Schedule;
    }
    
    
}
