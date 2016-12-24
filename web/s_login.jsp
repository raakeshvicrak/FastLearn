<%-- 
    Document   : s_login
    Created on : May 6, 2013, 6:14:16 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>LogIn &middot; Student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

  <body>
<br><br><br>
<%
String uid=(String)session.getAttribute("uid");
if(uid!=null)
{
out.println("You are already logged In");
response.setHeader("Refresh", "2;url=student_dashboard.jsp");
}
else
{
%>

    <div class="container">

        <center><form class="form-signin" action="s_login_val" method="POST">
        <h2 class="form-signin-heading">Student LogIn.</h2>
        <input type="text" class="input-block-level" name="uname" placeholder="Enter Username">
        <input type="password" class="input-block-level" name="pass" placeholder="Enter Password">
        <p><a href="register.jsp"> &nbsp; Register</a>if you are a new user.</p>
        <p><a href="f_login.jsp"> &nbsp;LogIn As A Faculty</a>if you are not a student.</p>
        <button class="btn btn-large btn-primary" type="submit">Log In</button>
            </form></center>

    </div> <!-- /container -->


    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

<%
    }
%>

  </body>
</html>
