/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ep;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.ep.Connectiondb;

/**
 *
 * @author IBN5
 */
public class download extends HttpServlet {

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String filename=request.getParameter("filename");
            System.out.println("File Name :"+ filename);
            String owner= request.getParameter("uname");
            System.out.println(owner);
            String fname=null;
           Connection con= Connectiondb.getCon();
          Statement st=con.createStatement();
    //      Statement st1=con.createStatement();
          
            
          InputStream is=null;
          ResultSet rt=st.executeQuery("select * from file where filename='"+filename+"' and owner='"+owner+"'");
          if(rt.next()){
         is=rt.getAsciiStream("file");
         fname=rt.getString("filename");
      
          BufferedReader br=new BufferedReader(new InputStreamReader(is));
         String temp=null;
         StringBuffer sb=new StringBuffer();
         while((temp=br.readLine())!=null){
            sb.append(temp);
         }
          br.close();
          
          response.setHeader("Content-Disposition","attachment;filename=\""+fname+"\"");        
         out.write(sb.toString());
                  
          }
          is.close();
          
         // response.sendRedirect("download.jsp");
        } 
        catch(Exception e){
            out.println("IO Failure.....");
        }
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
