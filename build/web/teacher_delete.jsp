<%-- 
    Document   : teacher_delete
    Created on : Feb 1, 2018, 12:23:51 AM
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
            int id;
        %>
        
        <%
            id=Integer.parseInt(request.getParameter("id"));
            
            ps=con.prepareStatement("delete from teacher where id=?");
            
            ps.setInt(1,id);
            ps.executeUpdate();
            ps.close();
            
            response.sendRedirect("teacher.jsp");
        %>
    </body>
</html>
