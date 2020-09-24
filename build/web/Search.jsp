<%-- 
    Document   : Search
    Created on : Mar 3, 2018, 12:08:06 PM
    Author     : Prasanna Venkat
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="db.jsp"%>
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
            String date,staff,id,batch;
            int pcount;
            
            SimpleDateFormat d=new SimpleDateFormat("YYYY-MM-dd-hh-mm-ss");

        %>
        
        <%
            ps=con.prepareStatement("select id from student");
            rs=ps.executeQuery();
        %>
        
  <div class="container">
         <div class="row">
                 <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Individual Searching</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
      
    <div class="form-container">
        <form method="get" action="Search_report.jsp" role="form" class="search-form" style="width: 50%">
    <div class="container">
        <!-- <div class="row"> -->
         <div class="col-lg-8">    
          <div class="form-group">
              
              <label for="student">Enter Student Roll.No</label>
          <select name='id' class='form-control'>
              <option>--Select--</option>
              <%
                  while(rs.next()){
                   id=rs.getString(1);
              %>
              <option value="<%=id%>"><%=id%></option>
              <%
                  }
                    rs.close();
                    ps.close();
              %>
          </select>
         </div>
            <div class="form-group">
          <label for="date" >*From Date: </label> <label style="color:white" >(date should be like MM-DD-YY)</label>
          <input type="date" name="fromdate" class="form-control">
          </div>

            <div class="form-group">
          <label for="date" >*To Date: </label> <label style="color:white" >(date should be like MM-DD-YY)</label>
          <input type="date" name="todate" class="form-control">
          </div>
   
          <div class="col-lg-8"><br>
          <button type="submit" class="btn btn-success btn-lg btn-block" value="Search" name="search">Search</button>
          </div>
        </form>
          </div>
          </div><!--form-container--> 
          </div><!--container--> 
    </body>
</html>
