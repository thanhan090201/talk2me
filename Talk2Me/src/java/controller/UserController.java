package controller;

/*
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import DAO.DAO;
import config.Config;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;


/**
 *
 * @author tuan vu
 */
@WebServlet(name = "AccountController", urlPatterns = {"/user"})
public class UserController extends HttpServlet {

    List<User> list = null;

    @Override
    public void init() throws ServletException {
        super.init();
        DAO gf = new DAO();
        list = gf.selectAccount();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        response.setContentType("text/html;charset=UTF-8");
        String action = (String) request.getAttribute("action");
        String controller = (String) request.getAttribute("controller");
        switch (action) {
            case "login":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "register":
                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
                break;
            case "Create_Account":
                Create_Account(request, response);
                break;
            case "loginAccount":
                init();
                LoginAccount(request, response);
                break;
           
            case "logout":
                logout(request, response);
                break;
//            case "order":
//                order(request, response);
//                break;
//            case "orderList":
//                request.getRequestDispatcher(Config.LAYOUT).forward(request, response);
//                break;
        }
    }

    protected void logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        HttpSession hsa = request.getSession();
        hsa.invalidate();
        request.getRequestDispatcher("/home/index.do").forward(request, response);
    }

//    protected void order(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        HttpSession ses = request.getSession();
//        Account ac = (Account) ses.getAttribute("account");
//        int idCustomer = ac.getIdCus();
//        GuitarFacade gf = new GuitarFacade();
//        listOrder = gf.selectOrder(idCustomer);
//        ses.setAttribute("listOrder", listOrder);
//        request.getRequestDispatcher("/account/orderList.do").forward(request, response);
//    }

    protected void LoginAccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException {
        //request information
        String id = request.getParameter("account");
        String pass = request.getParameter("password");
        //take date check 
        String passR = "";
        request.setAttribute("ac", id);
        request.setAttribute("pa", pass);
        int idCus = 0;
        idCus = customerID(idCus, id);
        //save account
        if (testAccount(id, pass, passR, request, response)) {
            
            HttpSession hs = request.getSession();
            User acSession = (User) hs.getAttribute("account");
            if (acSession == null) {
                acSession = new User();
            }
            acSession =new User(idCus, id, pass);
            hs.setAttribute("account", acSession);
            request.getRequestDispatcher("/home/index.do").forward(request, response);
        } else {
            request.getRequestDispatcher("/user/login.do").forward(request, response);
        }
    }

    protected int customerID(int idcus, String id) {
        for (User ac : list) {
            if (ac.getUser_Name().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                idcus = ac.getUser_Id();
            }
        }
        return idcus;
    }

    protected boolean testAccount(String id, String pass, String passR, HttpServletRequest request, HttpServletResponse response) throws NoSuchAlgorithmException {
        for (User ac : list) {
            if (ac.getUser_Name().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                passR = ac.getPassword();
                if (checkPassword(pass, passR)) {
                    return true;
                } else {
                    request.setAttribute("result", "Password Is Error!!!");
                    return false;
                }
            }
        }
        request.setAttribute("result", "Account Is Error!!!");
        return false;
    }

    public boolean checkPassword(String pass, String passR) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        //chuyen sang kieu du lieu array byte
        byte[] hashByte = md.digest(pass.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : hashByte) {
            //in theo hex String format,<2 se in số 0 bên phải
            sb.append(String.format("%02x", b));
        }
        if (sb.toString().equals(passR)) {
            return true;
        } else {
            return false;
        }
    }

    public boolean checkAccount(String id) {
        for (User ac : list) {
            if (ac.getUser_Name().toLowerCase().compareTo(id.toLowerCase()) == 0) {
                return false;
            }
        }
        return true;
    }

    protected void Create_Account(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            String id = request.getParameter("account");
            String pass = request.getParameter("password");
            String name = request.getParameter("nameCustomer");
            boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            int role=1;
            Date date=null;
             boolean isBlock =false;
            User ac = new User();
            String hash = HashingPass(pass);
            ac.setUser_Name(id);
            ac.setPassword(hash);
            ac.setName(name);
            ac.setGender(gender);
            ac.setEmail(email);
            ac.setPhoneNumber(phone);
            ac.setRole(role);
            ac.setIs_Blocked(isBlock);
            ac.setAvatar("");
            DAO gf = new DAO();
            request.setAttribute("ac", ac);
            request.setAttribute("pass", pass);
            if (checkAccount(id)) {
                if ((pass != "" && name != "" && id!="" && email!="" && phone!="" ) && gf.CreateAccount(ac)) {
                    request.getRequestDispatcher("/home/index.do").forward(request, response);
                    return;
                } else {
                    request.setAttribute("result", "Can't Create Account!!");
                }
            } else {
                request.setAttribute("result", "Account Is Exist!!!");
                request.getRequestDispatcher("/user/register.do").forward(request, response);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        request.getRequestDispatcher("/user/register.do").forward(request, response);
    }

    protected String HashingPass(String pass) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashByte = md.digest(pass.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : hashByte) {
            //in theo hex String format,<2 se in số 0 bên phải
            sb.append(String.format("%02x", b));
        }
        pass = sb.toString();
        return pass;
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
