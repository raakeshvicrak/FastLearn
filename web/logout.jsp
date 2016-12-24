<%-- 
    Document   : s_logout.jsp
    Created on : May 9, 2013, 6:11:09 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.invalidate();

out.println("Logged Out! You will be redirected to the home page!");
 response.setHeader("Refresh", "2;url=index.jsp");
%>
    </body>
</html>
