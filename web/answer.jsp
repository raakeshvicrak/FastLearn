<%-- 
    Document   : answer
    Created on : May 10, 2013, 3:37:17 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.lang.*"%>
<%@page import="model.DB"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answered!</title>
    </head>
    <body>
         <%
       
String ss=request.getParameter("ans");

        
       try{
       Connection con=DB.mycon();
       String query="update s_query set flag=1 where squery=?";
       PreparedStatement ps=con.prepareStatement(query);
       ps.setString(1, ss);
       ps.executeUpdate();
       out.println("Redirecting...");
       response.setHeader("Refresh", "3;url=f_query.jsp");
       }


       catch(Exception e)
               {
                out.println(e);
                }




       %>
    </body>
</html>
