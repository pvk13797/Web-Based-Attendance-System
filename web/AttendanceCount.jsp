<%-- 
    Document   : AttendanceCount
    Created on : Mar 1, 2018, 2:12:47 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%!
            PreparedStatement prt,pr;
            ResultSet rst,rs;
            //List<Integer> c=new ArrayList<>();
            int c,i;
        %>
        
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
            
            prt=con.prepareStatement("select ID,Name from student");
            rst=prt.executeQuery();
            
            while(rst.next())
            {
                
            pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo=?");
            pr.setString(1,rst.getString(1));
            rs=pr.executeQuery();
            
            while(rs.next())
            {
                    c=rs.getInt(1);
            }
            out.println(c);
           }
       %>
    </body>
</html>
