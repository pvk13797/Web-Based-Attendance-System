<%-- 
    Document   : teacher_entry_db
    Created on : Feb 1, 2018, 12:36:51 AM
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
            String fn,dob,gender,mail,num,degree,address;
        %>
        
        <%
            id=Integer.parseInt(request.getParameter("id"));
            fn=request.getParameter("fn");
            dob=request.getParameter("dob");
            gender=request.getParameter("gender");
            mail=request.getParameter("mail");
            num=request.getParameter("num");
            degree=request.getParameter("degree");
            address=request.getParameter("address");
            
            ps=con.prepareStatement("insert into teacher values(?,?,?,?,?,?,?,?)");
            
            ps.setInt(1,id);
            ps.setString(2,fn);
            ps.setString(3,dob);
            ps.setString(4,gender);
            ps.setString(5,mail);
            ps.setString(6,num);
            ps.setString(7,degree);
            ps.setString(8,address);
            
            ps.executeUpdate();
            ps.close();
            
            request.setAttribute("msg","Record Inserted");
            RequestDispatcher rd=application.getRequestDispatcher("/teacher_entry.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
