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
        <form action="std_query.jsp" method="POST">
    <textarea type="text" name="squery" placeholder="Enter Your Query(if any)"></textarea>
    <input type="submit" value="POST" class="btn btn-success">

</form>
        </div>
        <h2>Student Dashboard</h2>
         <br>Welcome, <%=name%>
        <br>Course :  <%=course%>
        

        </div>
<br>
<div style="font-size:20px"><u><b>Course Info:</b></u><br><br><br></div>
<div style="font-size:15px">
<%if(course.equals("Information Technology"))
    {%>

Information technology (IT) is the application of computers and telecommunications equipment to store, retrieve, transmit and manipulate data,[1] often in the context of a business or other enterprise.[2] The term is commonly used as a synonym for computers and computer networks, but it also encompasses other information distribution technologies such as television and telephones. Several industries are associated with information technology, such as computer hardware, software, electronics, semiconductors, internet, telecom equipment, e-commerce and computer services.[3]
In a business context, the Information Technology Association of America has defined information technology as "the study, design, development, application, implementation, support or management of computer-based information systems".[4] The responsibilities of those working in the field include network administration, software development and installation, and the planning and management of an organisation's technology life cycle, by which hardware and software is maintained, upgraded, and replaced.

<%}
else if(course.equals("Management"))
{
%>

Management is the application of computers and telecommunications equipment to store, retrieve, transmit and manipulate data,[1] often in the context of a business or other enterprise.[2] The term is commonly used as a synonym for computers and computer networks, but it also encompasses other information distribution technologies such as television and telephones. Several industries are associated with information technology, such as computer hardware, software, electronics, semiconductors, internet, telecom equipment, e-commerce and computer services.[3]
In a business context, the Information Technology Association of America has defined information technology as "the study, design, development, application, implementation, support or management of computer-based information systems".[4] The responsibilities of those working in the field include network administration, software development and installation, and the planning and management of an organisation's technology life cycle, by which hardware and software is maintained, upgraded, and replaced.

<%}else if(course.equals("Foreign Languages"))
    {
%>
A foreign language is a language indigenous to another country. It is also a language not spoken in the native country of the person referred to, i.e. an English speaker living in Japan can say that Japanese is a foreign language to him or her. These two characterisations do not exhaust the possible definitions, however, and the label is occasionally applied in ways that are variously misleading or factually inaccurate.
A German student learning French.
Some children learn more than one language from birth or from a very young age: they are bilingual or multilingual. These children can be said to have two, three or more mother tongues: neither language is foreign to that child, even if one language is a foreign language for the vast majority of people in the child's birth country. For example, a child learning English from her English father and Japanese at school in Japan can speak both English and Japanese, but neither is a foreign language to her.


<%}else if(course.equals("Arts & Science")){%>


</div>
<%}%>
    <%}
        else
            {
        out.println("You must be logged in to view this content");
        response.setHeader("Refresh", "2;url=index.jsp");
        }
        %>
    </body>
</html>
