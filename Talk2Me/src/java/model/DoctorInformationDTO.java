/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tuan vu
 */
public class DoctorInformationDTO {
    private int doctor_Information_Id ;
    private String description_Information;
    private String degree;
    private String image_Degree_Url;
    private boolean independent;
    private int hospital_Id;
    private int user_Id; 

    public DoctorInformationDTO() {
    }

    public DoctorInformationDTO(int doctor_Information_Id, String description_Information, String degree, String image_Degree_Url, boolean independent, int hospital_Id, int user_Id) {
        this.doctor_Information_Id = doctor_Information_Id;
        this.description_Information = description_Information;
        this.degree = degree;
        this.image_Degree_Url = image_Degree_Url;
        this.independent = independent;
        this.hospital_Id = hospital_Id;
        this.user_Id = user_Id;
    }

    public int getDoctor_Information_Id() {
        return doctor_Information_Id;
    }

    public void setDoctor_Information_Id(int doctor_Information_Id) {
        this.doctor_Information_Id = doctor_Information_Id;
    }

    public String getDescription_Information() {
        return description_Information;
    }

    public void setDescription_Information(String description_Information) {
        this.description_Information = description_Information;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getImage_Degree_Url() {
        return image_Degree_Url;
    }

    public void setImage_Degree_Url(String image_Degree_Url) {
        this.image_Degree_Url = image_Degree_Url;
    }

    public boolean isIndependent() {
        return independent;
    }

    public void setIndependent(boolean independent) {
        this.independent = independent;
    }

    public int getHospital_Id() {
        return hospital_Id;
    }

    public void setHospital_Id(int hospital_Id) {
        this.hospital_Id = hospital_Id;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }
    
    
}
