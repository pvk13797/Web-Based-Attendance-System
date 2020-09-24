<%-- 
    Document   : AttendanceCountAbsent
    Created on : Mar 3, 2018, 12:05:27 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            int a;
            PreparedStatement prt,pr;
            ResultSet rst,rs;
        %>
        
        <%
    
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
           
            prt=con.prepareStatement("select ID,Name from student");
            rst=prt.executeQuery();
            
            while(rst.next())
            {
                
            pr=con.prepareStatement("select count(Action) from attendance where Action='Absent' and StudentRollNo=?");
            pr.setString(1,rst.getString(1));
            rs=pr.executeQuery();
            
            while(rs.next())
            {
                    a=rs.getInt(1);
            }
            out.println(a);
            }
        %>
    </body>
</html>
