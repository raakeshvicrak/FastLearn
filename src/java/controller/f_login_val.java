/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DB;

/**
 *
 * @author student
 */
public class f_login_val extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet f_login_val</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet f_login_val at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
PrintWriter out=response.getWriter();
     String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
   String query="select * from f_reg where uname=? and pass=?";
    String un="",pss="",name="",email="",course="";
    try{
    Connection con=DB.mycon();
    PreparedStatement ps=con.prepareStatement(query);
    
        
    ps.setString(1,uname);
    ps.setString(2,pass);

    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
        
     un=rs.getString(1);
     name=rs.getString(2);
     email=rs.getString(3);
     pss=rs.getString(4);
    course=rs.getString(7);
    }
    }
    catch(Exception ee)
    {
    out.println(ee);
    }


if(uname.equals(un) && pass.equals(pss))
{

HttpSession session=request.getSession(true);
String auth="F";
String uid=session.getId();
session.setAttribute("fuid",uid);
session.setAttribute("fusername", un);
session.setAttribute("fname",name);
session.setAttribute("femail", email);
session.setAttribute("fpassword",pss);
session.setAttribute("fcourse",course);
session.setAttribute("auth",auth);
RequestDispatcher view =
      request.getRequestDispatcher("faculty_dashboard.jsp");
view.forward(request, response);
}
 else
{
 out.println("Incorrect Username/Password");
 response.setHeader("Refresh", "2;url=f_login.jsp");
 }



    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
