<%-- 
    Document   : regdb
    Created on : Jan 22, 2018, 8:39:04 PM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String fn,em,cus,np,cp;
        %>
        
        <%
            fn=request.getParameter("fn");
            em=request.getParameter("em");
            cus=request.getParameter("cus");
            np=request.getParameter("np");
            cp=request.getParameter("cp");
            
            ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
            
            ps.setString(1,fn);
            ps.setString(2,em);
            ps.setString(3,cus);
            ps.setString(4,np);
            ps.setString(5,cp);
            ps.executeUpdate();
            ps.close();
            
            RequestDispatcher rd=application.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
