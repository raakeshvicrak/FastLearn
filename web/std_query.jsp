<%-- 
    Document   : std_query
    Created on : May 9, 2013, 7:43:40 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*"  %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="model.DB" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

        String name=(String)session.getAttribute("name");
String course=(String)session.getAttribute("course");
String email=(String)session.getAttribute("email");

        String squery=request.getParameter("squery");
if(squery.length()!=0)
{
        try{
        int flag=0;
        Connection con=DB.mycon();
        String query="insert into s_query values(?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(query);
        ps.setString(1,name );
        ps.setString(2,email );
        ps.setString(3, squery);
        ps.setString(4, course);
        ps.setInt(5, flag);
        ps.executeUpdate();
out.println("Query Posted!");
response.setHeader("Refresh", "2;url=student_dashboard.jsp");
        }
        catch(Exception e)
        {
        out.println(e);
        }
}


    
        %>
    </body>
</html>
