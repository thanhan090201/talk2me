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
public class LocationDTO {
    private int location_Id;
    private String name;
    private String description_Location;
    private String image_URL;
    private Date create_Date_Location;
    private boolean status_Location;

    public LocationDTO() {
    }

    public LocationDTO(int location_Id, String name, String description_Location, String image_URL, Date create_Date_Location, boolean status_Location) {
        this.location_Id = location_Id;
        this.name = name;
        this.description_Location = description_Location;
        this.image_URL = image_URL;
        this.create_Date_Location = create_Date_Location;
        this.status_Location = status_Location;
    }

    public int getLocation_Id() {
        return location_Id;
    }

    public void setLocation_Id(int location_Id) {
        this.location_Id = location_Id;
    }

    public String getName()  {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
 
    public String getDescription_Location() {
        return description_Location ;
    }

    public void setDescription_Location(String description_Location) {
        this.description_Location = description_Location;
    }

    public String getImage_URL() {
        return image_URL;
    }

    public void setImage_URL(String image_URL) {
        this.image_URL = image_URL;
    }

    public Date getCreate_Date_Location() {
        return create_Date_Location;
    }

    public void setCreate_Date_Location(Date create_Date_Location) {
        this.create_Date_Location = create_Date_Location;
    }

    public boolean isStatus_Location() {
        return status_Location;
    }

    public void setStatus_Location(boolean status_Location) {
        this.status_Location = status_Location;
    }
    
    
}
