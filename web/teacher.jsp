<%-- 
    Document   : teacher
    Created on : Feb 1, 2018, 1:09:33 AM
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
            ps=con.prepareStatement("select * from teacher");
            rs=ps.executeQuery();
        %>
        
        <div class="container">
                      <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Staff's Record</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
            <p><a href="teacher_entry.jsp" class="ui blue tiny button "><i class="glyphicon glyphicon-plus"> </i>Insert</a></p>
                <div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                    <tr>
                  
                      <th>Staff Name(*)</th>
                      <th>DOB</th>
                      <th>Gender</th>
                      <th>Email</th>
                      <th>Phone</th>
                      <th>Degree</th>
                      <th>Address</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  
                   <%
                      while(rs.next()){
                  %>
     <tbody>
         <tr>  
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
          <td><%=rs.getString(7)%></td>
          <td><%=rs.getString(8)%></td>
            
          <td width=250>
           <div class='ui mini buttons'>
               <a class="ui mini positive button" href="teacher_update.jsp?id=<%=rs.getString("id")%>"> <i class="glyphicon glyphicon-pencil"></i>Update</a>
           <div class='or'></div>    
           <a class="ui mini red button" onclick="return confirm('Are You Sure Want To Delete?')" href="teacher_delete.jsp?id=<%=rs.getString("id")%>"><i class="glyphicon glyphicon-remove"> </i>Delete</a>
           </div>
           </td>    
           </tr>  
           
      </tbody>   
      
      <%
          }
          rs.close();
          ps.close();
      %>
            </table>
            </div><!--table-responsive-->
            </div><!--row-->   
           </div><!--container-->	  

    </body>
</html>
