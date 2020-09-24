<%-- 
    Document   : Search_report
    Created on : Mar 3, 2018, 12:11:36 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
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
        <script language="javascript">
            function back(){
                form1.action="Search.jsp";
                form1.submit();
            }
        </script>
    </head>
    <body>
        <%!
            ResultSet rss;
            String id,name,status,staff,date;
            PreparedStatement psr;
            int pcount;
        %>
        
        <%
             Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
            
            staff=request.getParameter("staff");
            date=request.getParameter("date");
            if(request.getParameter("id")!=null){
                id=request.getParameter("id");
            }
            else
            {
                id=session.getAttribute("id").toString();
            }
            
            psr=con.prepareStatement("select id,Name from student where id=?");
            psr.setString(1,id);
            rss=psr.executeQuery();
        %>
<div class="container">
 <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Individual Report </span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
    <form method="post" name="form1">
	<div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                    <tr>
                      <th>StudentRollNumber</th>
                      <th>Student Name</th>
                      <th>From Date</th>
                      <th>To Date</th>
                      <th>Hours Present</th>
                      <th>Hours Absent</th>
                    </tr>
                  </thead>
                   <%
                       if(rss.next()){   
                            session.setAttribute("id",id);
                                name=rss.getString(2);
                   %>
     <tbody>
                <tr>
                    <td style="font-weight:bold"><%=id%></td>
                    <td style="font-weight:bold"><%=name%></td>
                    <%!
                        String fdate,tdate;
                    %>
                    <%
                        fdate=request.getParameter("fromdate");
                        tdate=request.getParameter("todate");
                    %>
                    <td style="font-weight:bold"><%=fdate%></td>
                    <td style="font-weight:bold"><%=tdate%></td>                    
                <%
                PreparedStatement pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo=? and DateAndTime>=? and DateAndTime<=?");
                pr.setString(1,rss.getString(1));
                pr.setString(2,fdate);
                pr.setString(3,tdate);
                ResultSet rs=pr.executeQuery();
            
                 while(rs.next())
                {
                %>
                    <td style="font-weight:bold"><%=rs.getInt(1)%></td>
                <%
                pr=con.prepareStatement("select count(Action) from attendance where Action='Absent' and StudentRollNo=? and DateAndTime>=? and DateAndTime<=?");
                pr.setString(1,rss.getString(1));
                pr.setString(2,fdate);
                pr.setString(3,tdate);
          
                rs=pr.executeQuery();
            
                 while(rs.next())
                {
                %>
                    <td style="font-weight:bold"><%=rs.getInt(1)%></td>
                <%--%>
                 pr=con.prepareStatement("select count(Action) from attendance where Action='Present' and StudentRollNo=?");
                 pr.setString(1,rss.getString(1));
                 rs=pr.executeQuery();
                    while(rs.next())
                    {
                        double d=rs.getInt(1);
                        double d2=d/450*100;   
                %>
                    <td style="font-weight:bold"><%=df.format(d2)+"%"%></td>
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
            %>--%>
                </tr>
       </tbody>  
            </table>
                <div class="form-group">
                <div class="col-sm-offset-10 col-sm-10">
                    <button type="button" class="btn btn-success" onclick="back();" name="s1">Back</button>
            </div>
            </div>
                <%
                    }
                    }
                    }
                    rss.close();
                    psr.close();
                %>
        </div>
        </form>
            </div><!--table-responsive-->
            </div><!--row-->  <!--container-->  
    </body>
</html>
