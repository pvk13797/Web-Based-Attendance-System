<%-- 
    Document   : subject
    Created on : Feb 1, 2018, 12:24:04 AM
    Author     : Prasanna Venkat
--%>

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
            ResultSet rs;
        %>
        
        <%
            ps=con.prepareStatement("select * from subject");
            rs=ps.executeQuery();
        %>

<div class="container">
              <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Subjects Details</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
    <p><a href="subject_entry.jsp" class="ui blue tiny button "><i class="glyphicon glyphicon-plus"> </i>Insert</a></p>
                <div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                    <tr> 
                        <th>SI.No</th>
                      <th>Subject Code</th>
                      <th>Subject Name</th>
                      <th>Semester</th>
                    </tr>
                  </thead>
                  
                  <%
                      while(rs.next()){
                  %>
      <tbody>
            <tr>       
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getInt(4)%></td>
            </tr>    
      </tbody>     
      
      <%
          }
          rs.close();
          ps.close();
      %>
             </table>



</div> <!--table-responsive-->
</div><!--container-->

    </body>
</html>
