<%-- 
    Document   : f_query
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
        <title>Student Queries</title><link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
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
          <a class="brand" href="#">FastLearn</a>
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
            (Note:Answers to the queries should be sent to the student's mail)<br>
       <%

       String auth=(String)session.getAttribute("auth");

     

       String fcourse=(String)session.getAttribute("fcourse");
       String quest="",sname="",smail="";
  
       try{
       Connection con=DB.mycon();
       String query="select * from s_query where course=? and flag=0";
       PreparedStatement ps=con.prepareStatement(query);
       ps.setString(1,fcourse);
       ResultSet rs=ps.executeQuery();
      int a=0;
       while(rs.next())
           {
               a=1;
                sname=rs.getString(1);
                smail=rs.getString(2);
                quest=rs.getString(3);
               int temp=rs.getInt(5);
                
                    out.println("<br>Student Name : "+sname);
                    out.println("<br>Student Email : "+smail);
                    out.println("<br>Query : "+quest);
                    out.println("<form action='answer.jsp' method='POST'><input type='radio' name='ans' value='"+quest+"'><br><input type='submit' class='btn-primary' value='Answered'></form>");
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
