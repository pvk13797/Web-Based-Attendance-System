<%-- 
    Document   : subject_entry_db
    Created on : Feb 1, 2018, 12:21:02 AM
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
            int sno,sem;
            String code,name;
        %>
        
        <%
            sno=Integer.parseInt(request.getParameter("sno"));
            code=request.getParameter("code");
            name=request.getParameter("name");
            sem=Integer.parseInt(request.getParameter("sem"));
            
            ps=con.prepareStatement("insert into subject values(?,?,?,?)");
            
            ps.setInt(1,sno);
            ps.setString(2,code);
            ps.setString(3,name);
            ps.setInt(4,sem);
            
            ps.executeUpdate();
            ps.close();
            
            request.setAttribute("msg","Record Inserted");
            RequestDispatcher rd=application.getRequestDispatcher("/subject_entry.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
