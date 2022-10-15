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
   private String nameDoctor;
   private String avarta;
   private String phone;
   private String degree;
   private String hospital;

    public DoctorInformationDTO() {
    }

    public String getNameDoctor() {
        return nameDoctor;
    }

    public void setNameDoctor(String nameDoctor) {
        this.nameDoctor = nameDoctor;
    }

    public String getAvarta() {
        return avarta;
    }

    public void setAvarta(String avarta) {
        this.avarta = avarta;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital;
    }

    public DoctorInformationDTO(String nameDoctor, String avarta, String phone, String degree, String hospital) {
        this.nameDoctor = nameDoctor;
        this.avarta = avarta;
        this.phone = phone;
        this.degree = degree;
        this.hospital = hospital;
    }
   
    
}
