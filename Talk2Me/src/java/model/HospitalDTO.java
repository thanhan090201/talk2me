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
public class HospitalDTO {
    private int hospital_Id ;
    private String name;
    private String description_Hospital;
    private String image_Url;
    private Date create_Date_Hospital;
    private boolean status_Hospital;

    public HospitalDTO() { 
    }

    
    public HospitalDTO(int hospital_Id, String name, String description_Hospital, String image_Url, Date create_Date_Hospital, boolean status_Hospital) {
        this.hospital_Id = hospital_Id;
        this.name = name;
        this.description_Hospital = description_Hospital;
        this.image_Url = image_Url;
        this.create_Date_Hospital = create_Date_Hospital;
        this.status_Hospital = status_Hospital;
    }

    public int getHospital_Id() {
        return hospital_Id;
    }

    public void setHospital_Id(int hospital_Id) {
        this.hospital_Id = hospital_Id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription_Hospital() {
        return description_Hospital;
    }

    public void setDescription_Hospital(String description_Hospital) {
        this.description_Hospital = description_Hospital;
    }

    public String getImage_Url() {
        return image_Url;
    }

    public void setImage_Url(String image_Url) {
        this.image_Url = image_Url;
    }

    public Date getCreate_Date_Hospital() {
        return create_Date_Hospital;
    }

    public void setCreate_Date_Hospital(Date create_Date_Hospital) {
        this.create_Date_Hospital = create_Date_Hospital;
    }

    public boolean isStatus_Hospital() {
        return status_Hospital;
    }

    public void setStatus_Hospital(boolean status_Hospital) {
        this.status_Hospital = status_Hospital;
    }
    
    
}
