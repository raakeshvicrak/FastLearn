<%--
    Document   : student_dashboard
    Created on : May 9, 2013, 6:24:30 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/style.css"/>
    </head>
    <body>
        <%
        String auth=(String)session.getAttribute("auth");
        String uname=(String)session.getAttribute("fusername");
        String name=(String)session.getAttribute("fname");
        String course=(String)session.getAttribute("fcourse");
if(uname!=null && auth.equals("F"))
    {
        %>
       <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">FL</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="f_query.jsp">Student Queries</a></li>
              <li><a href="feed_view.jsp">View Feedback</a></li>
              
            </ul>
            
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

       <br><br>
       <div class="hero-unit">
        <div id="s_header"><br><a href="logout.jsp"><button class="btn-primary">Logout</button></a>
        <br><a href="f_reset.jsp">Change Password</a>
        </div>
        <h2>Faculty Dashboard</h2>
         <br>Welcome, <%=name%>
        <br>Course :  <%=course%>
       </div>




    <%}
        else
            {
        out.println("You must be logged in to view this content");
        response.setHeader("Refresh", "3;url=index.jsp");
        }
        %>
    </body>
</html>
