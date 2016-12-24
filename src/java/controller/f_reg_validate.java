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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DB;

/**
 *
 * @author student
 */
public class f_reg_validate extends HttpServlet {
   
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
            out.println("<title>Servlet f_reg_validate</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet f_reg_validate at " + request.getContextPath () + "</h1>");
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
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String courses = request.getParameter("c");
        String dob=request.getParameter("dob");
       String gender=request.getParameter("g");
       String pass=request.getParameter("password");
String r_pass=request.getParameter("r_password");
List err=new ArrayList();



try
{
if(email.length()!=0)
{
if(uname.length()!=0)
{

    if(name.length()!=0)
    {

    if(pass.equals(r_pass))
    {

       if(courses!=null)
       {

        }
       else
       {
       err.add("Please Select A Course");
        }
    }
    else
    {
    err.add("Passwords Do Not Match!");

    }
    }
 else
    {
        err.add("Name field is Required");}
    }


 else
    {
    err.add("Username field is Required");

    }
}
 else
{err.add("Email is Required");}
}
catch(Exception e)
{
  System.out.println(e);
}

if(err.isEmpty())
{
try{

Connection con=DB.mycon();
String query="insert into f_reg values(?,?,?,?,?,?,?)";
PreparedStatement st=con.prepareStatement(query);
st.setString(1,uname);
st.setString(2,name);
st.setString(3,email);
st.setString(4,pass);
st.setString(5,dob);
st.setString(6,gender);
st.setString(7,courses);
st.executeUpdate();

   

out.println("<br><br>Registration SUCCESS!<br>You will be redirected to your Login Page in a few seconds...");
response.setHeader("Refresh", "3;url=f_login.jsp");
}
catch(Exception de)
{
out.println("Registration Failed!");
response.setHeader("Refresh", "3;url=f_register.jsp");
}



}

 else
{

RequestDispatcher r=request.getRequestDispatcher("register.jsp");
request.setAttribute("error",err);
    r.forward(request,response);
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
