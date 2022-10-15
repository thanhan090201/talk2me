/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import DBUtils.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import model.BookingDTO;
import model.DoctorInformationDTO;
import model.ScheduleDTO;
import model.ScheduleTypeDTO;
import model.User;

/**
 *
 * @author tuan vu
 */
public class DAO {

    public List<User> selectAccount() {
        Connection con = DBConnect.getConnect();
        List<User> list = null;
        try {
            Statement sm = con.createStatement();
            ResultSet rs = sm.executeQuery("select * from [dbo].[User]");
            list = new ArrayList<>();
            while (rs.next()) {
                User ac = new User();
                ac.setUser_Id(rs.getInt("user_Id"));
                ac.setUser_Name(rs.getString("user_Name"));
                ac.setName(rs.getString("name"));
                ac.setEmail(rs.getString("email"));
                ac.setPassword(rs.getString("password"));
                ac.setPhoneNumber(rs.getString("phoneNumber"));
                ac.setGender(rs.getBoolean("gender"));
                ac.setAvatar(rs.getString("avatar"));
                ac.setRole(rs.getInt("role"));
                ac.setIs_Blocked(rs.getBoolean("is_Blocked"));
                list.add(ac);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public List<ScheduleTypeDTO> selectScheduleType() {
        Connection con = DBConnect.getConnect();
        List<ScheduleTypeDTO> list = null;
        try {
            Statement sm = con.createStatement();
            ResultSet rs = sm.executeQuery("select name,title,price,d.schedule_Id as id\n"
                    + "from Schedule d inner join ScheduleType t on\n"
                    + "d.schedule_Type_Id=t.schedule_Type_Id");
            list = new ArrayList<>();
            while (rs.next()) {
                ScheduleTypeDTO sd = new ScheduleTypeDTO();
                sd.setName(rs.getString("name"));
                sd.setTitle(rs.getString("title"));
                sd.setPrice(rs.getFloat("price"));
                sd.setSchedule_Id(rs.getInt("id"));
                list.add(sd);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public List<DoctorInformationDTO> selectDoctor() {
        Connection con = DBConnect.getConnect();
        List<DoctorInformationDTO> list = null;
        try {
            Statement sm = con.createStatement();
            ResultSet rs = sm.executeQuery("select u.name as nameDoctor, avatar,phoneNumber,degree,h.name as hospital\n"
                    + "from [dbo].[User] u inner join DoctorInformation d on\n"
                    + "	u.user_Id=d.user_Id inner join Hospital h on d.hospital_Id=h.hospital_Id\n"
                    + "where role=2");
            list = new ArrayList<>();
            while (rs.next()) {
                DoctorInformationDTO sd = new DoctorInformationDTO();
                sd.setNameDoctor(rs.getString("nameDoctor"));
                sd.setAvarta(rs.getString("avatar"));
                sd.setPhone(rs.getString("phoneNumber"));
                sd.setDegree(rs.getString("degree"));
                sd.setHospital(rs.getString("hospital"));
                list.add(sd);
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public boolean CreateAccount(User ac) {
        boolean result = true;
        Connection con = DBConnect.getConnect();
        try {
            PreparedStatement ps = con.prepareStatement("insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]\n"
                    + "			,[gender],[avatar],[role],[is_Blocked]) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, ac.getUser_Name());
            ps.setString(2, ac.getName());
            ps.setString(3, ac.getEmail());
            ps.setString(4, ac.getPassword());
            ps.setString(5, ac.getPhoneNumber());
            ps.setBoolean(6, ac.isGender());
            ps.setString(7, ac.getAvatar());
            ps.setInt(8, ac.getRole());
            ps.setBoolean(9, ac.isGender());

            int count = ps.executeUpdate();
            if (count == 0) {
                result = false;
            }
            con.close();
        } catch (Exception e) {
            e.getMessage();
            result = false;
        }
        return result;
    }

    public boolean CreateBooking(BookingDTO ac) {
        boolean result = true;
        Connection con = DBConnect.getConnect();
        try {
            PreparedStatement ps = con.prepareStatement("insert into Booking ([begin_Time],[end_Time],[total_Amount],[status_Booking]\n"
                    + ",[payment_Method],[schedule_Id],[doctor_Id],[patient_Id])\n"
                    + "values(?,?,?,?,?,?,?,?)");
            ps.setDate(1, (java.sql.Date) ac.getBegin_Time());
            ps.setInt(2, ac.getEnd_Time());
            ps.setFloat(3, ac.getTotal_Amount());
            ps.setBoolean(4, ac.isStatus_Booking());
            ps.setInt(5, ac.getPayment_Method());
            ps.setInt(6, ac.getSchedule_Id());
            ps.setInt(7, ac.getDoctor_Id());
            ps.setInt(8, ac.getPatient_Id());
            int count = ps.executeUpdate();
            con.close();
        } catch (Exception e) {
            e.getMessage();
            result = false;
        }
        return result;
    }
}
