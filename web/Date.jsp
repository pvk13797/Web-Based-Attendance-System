<%-- 
    Document   : Date
    Created on : Feb 23, 2018, 7:10:40 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.util.*"%>
<%@page import="java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Date d1;
            SimpleDateFormat fmt;
            String s1;
        %>
        
        <%
            d1=new Date();
            
            fmt=new SimpleDateFormat("YYYY/MM/DD hh:mm:ss");
            
            s1=fmt.format(d1);
            
        %>
    </body>
</html>
