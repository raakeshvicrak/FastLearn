<%-- 
    Document   : register
    Created on : Mar 25, 2013, 5:05:21 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Student Registration</title>
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

    <body>
        <center><c:forEach items="${requestScope.error}" var="a">

            <c:out value="${a}"><br></c:out>
        </c:forEach></center>
        <div class="container">
            <a href="index.jsp"><button class="btn btn-success">HOME</button></a>
            <center><form class="form-signin" action="reg_validate.do" method="POST">
  <h2 class="form-signin-heading">Student Registration</h2>

            <input type="text" name="uname" class="input-block-level" placeholder="Enter Username"><br>
            <input type="text" name="name" placeholder="Enter Name"class="input-block-level"><br>
            <input type="text" name="email" placeholder="Enter Email Address"class="input-block-level"><br>
            <input type="password" name="password" placeholder="Enter Password" class="input-block-level"><br>
            <input type="password" name="r_password" placeholder="Retype Password" class="input-block-level"><br>
            <input type="text" name="dob" placeholder="Date of Birth(DD/MM/YYYY)" class="input-block-level"><br>
            <input type="radio" name="g" value="M">Male
            <input type="radio" name="g" value="F">Female<br>
            <input type="radio" name="c" value="Arts & Commerce">Arts and Commerce
            <input type="radio" name="c" value="Management">Management
            <input type="radio" name="c" value="Information Technology">Information Technology<br>
            <input type="radio" name="c" value="Foreign Languages">Foreign Languages<br>

        <input type="submit" value="Register" class="btn btn-large btn-primary">
                </form></center>
        <%
/*List b=new LinkedList();
b.add("the");
b.add("net");
b.add("work");
pageContext.setAttribute("WEx",b);*/
List errmsg = (List)request.getAttribute("error");


%>
  
    </div>
    </body>
</html>
