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
public class NoficationDTO {
    private int nofication_Id;
    private String description_Nofication;
    private int receiver_Id;
    private int booking_Id;
    private Date create_Date_Nofication;
    private boolean status_Nofication;

    public NoficationDTO() {
    }

    
    public NoficationDTO(int nofication_Id, String description_Nofication, int receiver_Id, int booking_Id, Date create_Date_Nofication, boolean status_Nofication) {
        this.nofication_Id = nofication_Id;
        this.description_Nofication = description_Nofication;
        this.receiver_Id = receiver_Id;
        this.booking_Id = booking_Id;
        this.create_Date_Nofication = create_Date_Nofication;
        this.status_Nofication = status_Nofication;
    }

    public int getNofication_Id() {
        return nofication_Id;
    }

    public void setNofication_Id(int nofication_Id) {
        this.nofication_Id = nofication_Id;
    }

    public String getDescription_Nofication() {
        return description_Nofication;
    }

    public void setDescription_Nofication(String description_Nofication) {
        this.description_Nofication = description_Nofication;
    }

    public int getReceiver_Id() {
        return receiver_Id;
    }

    public void setReceiver_Id(int receiver_Id) {
        this.receiver_Id = receiver_Id;
    }

    public int getBooking_Id() {
        return booking_Id;
    }

    public void setBooking_Id(int booking_Id) {
        this.booking_Id = booking_Id;
    }

    public Date getCreate_Date_Nofication() {
        return create_Date_Nofication;
    }

    public void setCreate_Date_Nofication(Date create_Date_Nofication) {
        this.create_Date_Nofication = create_Date_Nofication;
    }

    public boolean isStatus_Nofication() {
        return status_Nofication;
    }

    public void setStatus_Nofication(boolean status_Nofication) {
        this.status_Nofication =  status_Nofication;
    }
    
     
}
