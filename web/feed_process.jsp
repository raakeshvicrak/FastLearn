<%-- 
    Document   : feed_process
    Created on : May 11, 2013, 12:30:44 PM
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

<%
String uid=(String)session.getAttribute("uid");
String uname=(String)session.getAttribute("username");
String course=(String)session.getAttribute("course");
String feed=request.getParameter("feed");
if(uid!=null)
{
if(feed.length()!=0)
{
        try{
        
        Connection con=DB.mycon();
        String query="insert into s_feed values(?,?,?)";
        PreparedStatement ps=con.prepareStatement(query);
        ps.setString(1,uname);
        ps.setString(2,feed);
        ps.setString(3,course);
        ps.executeUpdate();
out.println("Feedback Posted!");
response.setHeader("Refresh", "2;url=student_dashboard.jsp");
        }
        catch(Exception e)
        {
        out.println(e);
        }
}
else
{
out.println("Empty Feedback is not allowed");
}response.setHeader("Refresh", "2;url=feed.jsp");
}
else
   {
    out.println("Members Area. Please LogIn to Continue");
response.setHeader("Refresh", "2;url=s_login.jsp");
}
%>
