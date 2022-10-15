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
public class BookingDTO {
    private int booking_id;
    private Date begin_Time;
    private int end_Time;
    private float total_Amount;
    private boolean status_Booking;
    private int payment_Method;
    private int schedule_Id;
    private int doctor_Id;
    private int patient_Id;

    public BookingDTO() {
    }

    public BookingDTO(int booking_id, Date begin_Time, int end_Time, float total_Amount, boolean status_Booking, int payment_Method, Date create_Date_Booking, int schedule_Id, int doctor_Id, int patient_Id) {
        this.booking_id = booking_id;
        this.begin_Time = begin_Time;
        this.end_Time = end_Time;
        this.total_Amount = total_Amount;
        this.status_Booking = status_Booking;
        this.payment_Method = payment_Method;
        this.schedule_Id = schedule_Id;
        this.doctor_Id = doctor_Id;
        this.patient_Id = patient_Id;
    }

    public int getBooking_id() {
        return booking_id;
    }

    public void setBooking_id(int booking_id) {
        this.booking_id = booking_id;
    }

    public Date getBegin_Time() {
        return begin_Time;
    }

    public void setBegin_Time(Date begin_Time) {
        this.begin_Time = begin_Time;
    }

    public int getEnd_Time() {
        return end_Time;
    }

    public void setEnd_Time(int end_Time) {
        this.end_Time = end_Time;
    }

    public float getTotal_Amount() {
        return total_Amount;
    }

    public void setTotal_Amount(float total_Amount) {
        this.total_Amount = total_Amount;
    }

    public boolean isStatus_Booking() {
        return status_Booking;
    }

    public void setStatus_Booking(boolean status_Booking) {
        this.status_Booking = status_Booking;
    }

    public int getPayment_Method() {
        return payment_Method;
    }

    public void setPayment_Method(int payment_Method) {
        this.payment_Method = payment_Method;
    }

   
    public int getSchedule_Id() {
        return schedule_Id;
    }

    public void setSchedule_Id(int schedule_Id) {
        this.schedule_Id = schedule_Id;
    }

    public int getDoctor_Id() {
        return doctor_Id;
    }

    public void setDoctor_Id(int doctor_Id) {
        this.doctor_Id = doctor_Id;
    }

    public int getPatient_Id() {
        return patient_Id;
    }

    public void setPatient_Id(int patient_Id) {
        this.patient_Id = patient_Id;
    }
    
    
}
