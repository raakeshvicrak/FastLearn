<%--
    Document   : feed_view
    Created on : May 10, 2013, 2:40:06 PM
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
        <title>Student Feedbacks</title><link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css"/>
    </head>
    <body><div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">FeastLearn</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="faculty_dashboard.jsp">Home</a></li>
              <li><a href="f_query.jsp">Student Queries</a></li>
              <li><a href="feed_view.jsp">View Feedback</a></li>
              <li><a href="logout.jsp">Logout</a></li>

            </ul>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
        <br><br>
        <div class="hero-unit">
       <%

      // String auth=(String)session.getAttribute("auth");



       //String fcourse=(String)session.getAttribute("fcourse");
       String sfeed="",sname="",course="";

       try{
       Connection con=DB.mycon();
       String query="select * from s_feed";
       PreparedStatement ps=con.prepareStatement(query);
       ResultSet rs=ps.executeQuery();
      int a=0;
       while(rs.next())
           {
               a=1;
                sname=rs.getString(1);
                sfeed=rs.getString(2);
                course=rs.getString(3);
               

                    out.println("<br>Student Username : "+sname);
                    out.println("<br>Student Feedbac : "+sfeed);
                    out.println("<br>Course : "+course);
                    out.println("<br><hr><br>");

}
if(a==0)
out.println("All Other Questions have been Answered!");

       }

       catch(Exception e)
               {
                out.println(e);
                }




       %>
    </div>
        </body>

</html>
