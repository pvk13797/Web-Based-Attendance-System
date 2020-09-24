<%-- 
    Document   : attendance_report
    Created on : Feb 1, 2018, 12:59:00 AM
    Author     : Prasanna Venkat
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            DecimalFormat df=new DecimalFormat(".##");
            ResultSet rss;
            String status;
        %>
        
        <%
            ps=con.prepareStatement("select ID,Name from student");
            rss=ps.executeQuery();
        %>
        
          <div class="container">
  <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Attendance Report</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
	<div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                    <tr>
                      <th>Student RollNo</th> 
                      <th>Student Name</th>
                      <th>Hours Present</th>
                      <th>Hours Absent</th>
                      <th>Total Number Of Hours</th>
                      <th>Percentage</th>
                      <th>Status</th>
                    </tr>
                  </thead>
                  
                  <%
                      while(rss.next()){
                  %>        
                  
     <tbody>
            <tr>
                <td style="font-weight:bold"><%=rss.getString(1)%></td>
                <td style="font-weight:bold"><%=rss.getString(2)%></td>
                
                <%
                PreparedStatement pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo=?");
                pr.setString(1,rss.getString(1));
                ResultSet rs=pr.executeQuery();
            
                 while(rs.next())
                {
                %>
                
                <td style="font-weight:bold"><%=rs.getInt(1)%></td>
                
                <%
                pr=con.prepareStatement("select count(Action) from attendance where Action='Absent' and StudentRollNo=?");
                pr.setString(1,rss.getString(1));
                rs=pr.executeQuery();
            
                 while(rs.next())
                {
                %>
                
                <td style="font-weight:bold"><%=rs.getInt(1)%></td>
                <td style="font-weight:bold">450</td>
                
                <%
                 pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo=?");
                 pr.setString(1,rss.getString(1));
                 rs=pr.executeQuery();
                    while(rs.next())
                    {
                        double d=rs.getInt(1);
                        double d2=d/450*100;   
                %>
                
                <td style="font-weight:bold;"><%=df.format(d2)+"%"%></td>
                
            <%
                if(d2>=75)
                {
                    status="Issue Hall Ticket";
            %>
            <td style="font-weight:bold;width:250px;color:green;font-size:15px;font"><%=status%></td>
            <%
                }
                else if(d2>=65  && d2<75)
                {
                    status="Fine Rs.350";
            %>
            <td style="font-weight:bold;width:250px;color:red;font-size:15px;text-decoration:blink;"><%=status%></td>
            <%
                }
                else if(d2<65 && d2>=51)
                {
                    status="Repeat Semester";
            %>
            <td style="font-weight:bold;width:250px;color:red;font-size:15px;"><%=status%></td>
            <%
                }
                else if(d2>=50)
                {
                    status="Repeat Course";
            %>
            <td style="font-weight:bold;width:250px;color:red;font-size:15px;"><%=status%></td>
            <%
                }
            %>
            </tr>
      </tbody>     
        <%
            }
            }
                }
                }
            rss.close();
            ps.close();
        %>
            </table>
             </div><!--table-responsive-->
            </div><!--container-->
    </body>
</html>
