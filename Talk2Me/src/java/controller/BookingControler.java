/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DAO;
import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.BookingDTO;
import model.ScheduleTypeDTO;
import model.User;

/**
 *
 * @author tuan vu
 */
@WebServlet(name = "BookingControler", urlPatterns = {"/booking"})
public class BookingControler extends HttpServlet {

    List<ScheduleTypeDTO> listScheduleType = null;

    @Override
    public void init() throws ServletException {
        super.init();
        DAO gf = new DAO();
        listScheduleType = gf.selectScheduleType();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String controller = String.valueOf(request.getAttribute("controller"));
        String action = String.valueOf(request.getAttribute("action"));
        switch (action) {
            case "booking":
                init();
                request.setAttribute("list", listScheduleType);
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "bookingDoctor":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "createBooking":
                
                break;

        }
       
    }
     public void createBooking(HttpServletRequest request, HttpServletResponse response) throws ParseException {
         HttpSession hs= request.getSession();
         User usSession = (User) hs.getAttribute("account");
            int scheduleId=Integer.parseInt(request.getParameter("scheduleId"));
            int doctorId=Integer.parseInt(request.getParameter("doctorId"));
            int endtime=Integer.parseInt(request.getParameter("endtime"));
           int patientId=usSession.getUser_Id();
           boolean status=true;
           int price=Integer.parseInt(request.getParameter("price"));
           int total=price*endtime;
           int payment=Integer.parseInt(request.getParameter(""));
            String date=request.getParameter("datetime");
            SimpleDateFormat spf=new SimpleDateFormat("yyyy-MM-dd");
            Date datetime=spf.parse(date);
           
            BookingDTO b=new BookingDTO();
            b.setBegin_Time(datetime);
            b.setEnd_Time(endtime);
            b.setTotal_Amount(total);
            b.setStatus_Booking(status);
            b.setPayment_Method(payment);
            b.setSchedule_Id(scheduleId);
            b.setDoctor_Id(doctorId);
            b.setPatient_Id(patientId);
            
            DAO gf=new DAO();
            if(gf.CreateBooking(b)){
                
            }else{
                
            }
     }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
