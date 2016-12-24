<%-- 
    Document   : s_pass_reset
    Created on : May 10, 2013, 4:54:24 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="model.DB"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css"/>
    </head>
    <body>
        <%

        String uname=(String)session.getAttribute("username");
        String cpass=(String)session.getAttribute("password");

        if(uname!=null)
    {

    String cp=request.getParameter("cp");
    String np1=request.getParameter("np1");
    String np2=request.getParameter("np2");

    if(cp.equals(cpass) && np1.equals(np2))
    {
    String query="update s_reg set s_pass=? where s_uname=?";

    try{
    Connection con=DB.mycon();
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1,np1);
    ps.setString(2,uname);
    ps.executeUpdate();
    out.println("You have Changed your Password Successfully. Redirecting to Dashboard...");
    response.setHeader("Refresh", "3;url=student_dashboard.jsp");
    }

    catch(Exception ee)
    {
    out.println(ee);
    }
    }
     else
        {
            out.println("The Current Password you have Entered is Incorrect. Please Try again.");
            response.setHeader("Refresh", "2;url=f_reset.jsp");
        }
%>








    </body>
 <%}
        else
            {
        out.println("You must be logged in to view this content");
        response.setHeader("Refresh", "2;url=index.jsp");
        }
        %>
    
</html>
