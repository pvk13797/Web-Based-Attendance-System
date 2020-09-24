<%-- 
    Document   : student_entry_db
    Created on : Jan 27, 2018, 8:33:27 AM
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
            int year,semester;
            String id,name,gender,dob,course,dept,mail,num,address,batch;
        %>
        
        <%
            batch=request.getParameter("batch");
            id=request.getParameter("id");
            name=request.getParameter("name");
            dob=request.getParameter("dob");
            gender=request.getParameter("gender");
            course=request.getParameter("course");
            dept=request.getParameter("dept");
            year=Integer.parseInt(request.getParameter("year"));
            mail=request.getParameter("mail");
            num=request.getParameter("num");
            address=request.getParameter("address");
            semester=Integer.parseInt(request.getParameter("semester"));
            
            ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?,?,?,?)");

            ps.setString(1,batch);
            ps.setString(2,id);
            ps.setString(3,name);
            ps.setString(4,dob);
            ps.setString(5,gender);
            ps.setString(6,course);
            ps.setString(7,dept);
            ps.setInt(8,year);
            ps.setString(9,mail);
            ps.setString(10,num);
            ps.setString(11,address);
            ps.setInt(12,semester);
            
            ps.executeUpdate();
            ps.close();
            
            request.setAttribute("msg","Record Inserted");
            RequestDispatcher rd=application.getRequestDispatcher("/student_entry.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
