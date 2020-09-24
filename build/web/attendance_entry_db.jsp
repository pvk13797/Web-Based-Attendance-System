<%-- 
    Document   : attendance_entry_db
    Created on : Feb 22, 2018, 1:01:27 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            ResultSet rs;
        %>
        
        <%
            ps=con.prepareStatement("select * from student");    
            rs=ps.executeQuery();int i=1;
            while(rs.next())
             {
            String user=request.getParameter("user");
            String dt=request.getParameter("dt");
            String id=request.getParameter("id"+i);
            String name=request.getParameter("name"+i);
            int hr=Integer.parseInt(request.getParameter("hr"));
            String an=request.getParameter("an"+i);
          
            ps=con.prepareStatement("insert into attendance values(?,?,?,?,?,?)");
            
            ps.setString(1,user);
            ps.setString(2,dt);
            ps.setString(3,id);
            ps.setString(4,name);
            ps.setInt(5,hr);
            ps.setString(6,an);
            
            ps.executeUpdate();
            i++;
            ps.close();
            }
            
            request.setAttribute("alertMsg","Yes");
            RequestDispatcher rd=application.getRequestDispatcher("/attendanceform.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
