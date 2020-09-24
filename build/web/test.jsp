<%-- 
    Document   : Search_report
    Created on : Mar 3, 2018, 12:11:36 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/semantic.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css"/>
        </head>
    <body>
        <%!
            int pcount;
            String date,id,staff;
            ResultSet rs;
        %>
        
       
        
        <%
            ps=con.prepareStatement("select DateAndTime from attendance where StudentRollNo='15UCS001'");
            rs=ps.executeQuery();
            while(rs.next()){
                date=rs.getString(1);
            }
            out.println(date);
            rs.close();
            ps.close();
            
        %>
        
        
    </body>
</html>