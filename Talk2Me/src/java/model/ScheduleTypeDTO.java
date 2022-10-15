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
    private int schedule_Type_Id;
    private int location_Id;
    private String name;
    private String description_Schedule_Type;
    private boolean status_Schedule_Type;
    private Date create_Date_Schedule_Type;

    public ScheduleTypeDTO() {
    }

    public ScheduleTypeDTO(int schedule_Type_Id, int location_Id, String name, String description_Schedule_Type, boolean status_Schedule_Type, Date create_Date_Schedule_Type) {
        this.schedule_Type_Id = schedule_Type_Id;
        this.location_Id = location_Id;
        this.name = name;
        this.description_Schedule_Type = description_Schedule_Type;
        this.status_Schedule_Type = status_Schedule_Type;
        this.create_Date_Schedule_Type = create_Date_Schedule_Type;
    }

    public int getSchedule_Type_Id() {
        return schedule_Type_Id;
    }

    public void setSchedule_Type_Id(int schedule_Type_Id) {
        this.schedule_Type_Id = schedule_Type_Id;
    }

    public int getLocation_Id() {
        return location_Id;
    }

    public void setLocation_Id(int location_Id) {
        this.location_Id = location_Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription_Schedule_Type() {
        return description_Schedule_Type;
    }

    public void setDescription_Schedule_Type(String description_Schedule_Type) {
        this.description_Schedule_Type = description_Schedule_Type;
    }

    public boolean isStatus_Schedule_Type() {
        return status_Schedule_Type;
    }

    public void setStatus_Schedule_Type(boolean status_Schedule_Type) {
        this.status_Schedule_Type = status_Schedule_Type;
    }

    public Date getCreate_Date_Schedule_Type() {
        return create_Date_Schedule_Type;
    }

    public void setCreate_Date_Schedule_Type(Date create_Date_Schedule_Type) {
        this.create_Date_Schedule_Type = create_Date_Schedule_Type ;
    }
    
     
}
