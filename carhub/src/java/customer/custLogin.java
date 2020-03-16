/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer;
//package com.ociweb.sett.sep2011;

import bean.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletOutputStream;
import jdbc.JDBCUtility;
import java.lang.AssertionError;

//import com.google.common.collect.*;
//import com.google.java.contract.*;

/**
 *
 * @author Najihah Zanudin
 */
@WebServlet(name = "custLogin", urlPatterns = {"/custLogin"})
public class custLogin extends HttpServlet {

   private JDBCUtility jdbcUtility;
   private Connection con;
    
//    @Invariant({"username != null && username.length() > 0", "password > 6"})
    public void init() throws ServletException
    {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "newcarhubdb";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
        
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
//    @Invariant({"username != null && username.length() > 0", "password > 6"})
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        user us = null;
        
        //Get the session object
        HttpSession session = request.getSession();
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //us.checkPassword(password);
        
        String ut = "";
        
//        ServletOutputStream outputStream;
//       outputStream = response.getOutputStream();


        try {
            String sqlQuery = "SELECT * FROM user WHERE username = ? AND password = ?";
            PreparedStatement preparedStatement = con.prepareStatement(sqlQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                ut = rs.getString("type");
                password = rs.getString("password");
                username = rs.getString ("username");
                
                us = new user();
                us.setUsername(username);
                us.setType(ut);
//                @Ensures("price > 0");
                us.setPassword(password);
                assert us.checkPassword()==true:"password cannot be null";
        }

    }
    catch (SQLException | AssertionError ex) { 
        
     
        }
        

//based on userType redirect to appropriate JSPs
   
        if (ut.equals("customer")) {
            session.setAttribute("SAprofile", us);
            response.sendRedirect(request.getContextPath() + "/homecustomer.jsp");
            }
        else if (ut.equals("admin")) {
            session.setAttribute("SAprofile", us);
            response.sendRedirect(request.getContextPath() + "/homeadmin.jsp");
            }
        else {
            response.sendRedirect(request.getContextPath() + "/termination.jsp");
//            assert false : "Assertion occur";
        } 
    }
    
//   void checkPassword() {
//        String password = "";
//        assert password == null;
//    }


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
