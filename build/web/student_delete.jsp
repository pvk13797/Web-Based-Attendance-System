<%-- 
    Document   : student_delete
    Created on : Feb 1, 2018, 12:25:46 AM
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
            String id;
        %>
        
        <%
            id=request.getParameter("id");
            
            ps=con.prepareStatement("delete from student where id=?");
            
            ps.setString(1,id);
            ps.executeUpdate();
            ps.close();
            
            response.sendRedirect("student.jsp");
        %>
    </body>
</html>
