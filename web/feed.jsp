<%--
    Document   : feed
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
        String uname=(String)session.getAttribute("username");
        String name=(String)session.getAttribute("name");
        String course=(String)session.getAttribute("course");
        if(uname!=null)
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
              <li class="active"><a href="student_dashboard.jsp">Home</a></li>
              <li><a href="feed.jsp">Write Feedback</a></li>

            </ul>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
<div class="hero-unit">



        <div id="s_header"><br><a href="logout.jsp"><button class="btn-primary">Logout</button></a>
        <br><a href="s_reset.jsp">Change Password</a>
        <br><br><br>
        <form action="feed_process.jsp" method="POST">
    <textarea type="text" name="feed" placeholder="Write Your Feedback(if any)"></textarea>
    <input type="submit" value="Write Feedback" class="btn btn-large btn-success">

</form>
        </div>
        <h2>Student Dashboard</h2>
         <br>Welcome, <%=name%>
        <br>Course :  <%=course%>


        </div>
<br>








    <%}
        else
            {
        out.println("You must be logged in to view this content");
        response.setHeader("Refresh", "2;url=index.jsp");
        }
        %>
    </body>
</html>
