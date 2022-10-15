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
public class User {
    private int user_Id;
    private String user_Name;
    private String name;
    private String email;
    private String password;
    private String phoneNumber;
    private boolean gender;
    private String avatar;
    private int role;
    private boolean is_Blocked;

    public User(int user_Id, String user_Name, String password) {
        this.user_Id = user_Id;
        this.user_Name = user_Name;
        this.password = password;
    }

    
    public User() {
    }

    public User(int user_Id, String user_Name, String name, String email, String password, String phoneNumber, boolean gender, String avatar, int role,  boolean is_Blocked) {
        this.user_Id = user_Id;
        this.user_Name = user_Name;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.avatar = avatar;
        this.role = role;
        this.is_Blocked = is_Blocked;
    }

    public int getUser_Id() {
        return user_Id;
    }

    public void setUser_Id(int user_Id) {
        this.user_Id = user_Id;
    }

    public String getUser_Name() {
        return user_Name;
    }

    public void setUser_Name(String user_Name) {
        this.user_Name = user_Name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    

    public boolean isIs_Blocked() {
        return is_Blocked;
    }

    public void setIs_Blocked(boolean is_Blocked) {
        this.is_Blocked = is_Blocked;
    }
    
    
} 
