<%-- 
    Document   : s_reset
    Created on : May 10, 2013, 4:57:29 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title><link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css"/>
    </head>
    <body>
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
              <li><a href="f_query.jsp">Student Queries</a></li>
              <li><a href="logout.jsp">Logout</a></li>

            </ul>

          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
        <div class="hero-unit">
        <br><br><center><h3>Change Password</h3><form action="s_pass_success.jsp" method="POST">
            <input type="password" name="cp" placeholder="Enter Current Password"><br>
            <input type="password" name="np1" placeholder="Enter New Password"><br>
            <input type="password" name="np2" placeholder="Retype New Password"><br>
            <input type="submit" value="Change Password" class="btn btn-inverse">
        </form>
            </center>
        </div>
    </body>
</html>
