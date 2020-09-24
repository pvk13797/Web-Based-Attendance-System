<%-- 
    Document   : attendanceform
    Created on : Feb 1, 2018, 12:20:35 AM
    Author     : Prasanna Venkat
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="db.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link href="css/dist/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="css/dist/sweetalert.js" type="text/javascript"></script>
        <script src="css/dist/sweetalert.min.js" type="text/javascript"></script>   
    </head>
    <body>
        
        <%!
            ResultSet rs;
            String user;
           
        %>
        
        <%
            SimpleDateFormat d=new SimpleDateFormat("YYYY-MM-dd hh-mm-ss");
            long dt=System.currentTimeMillis();
            String date=d.format(dt);
            
            
            try{
                if(request.getParameter(user)!=null){
                    user=request.getParameter("user");
                }
                else{
                    user=session.getAttribute("user").toString();
                }
                %>
                <%@include file="Greetings.jsp"%>
                <%
            ps=con.prepareStatement("select * from student");
            rs=ps.executeQuery();
        %>
        
         <div class="container">
              <div class="row">
                 <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Attendance Form</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                  </div>
                </div>
         </div>
<div class="form-container">
    <form method="post" action="attendance_entry_db.jsp">
     <!-- <div class="container"> -->
     <input type="hidden" name="user" value="<%=user%>">
     <div class="form-container">
                <div class="col-lg-3">
<label for="dt" class="col-sm-2 control-label">Date&Time</label>
<div class="form-group">
    <input type="text" name="dt" value="<%=date%>" class="form-control" id="" placeholder="" readonly>
</div>
</div>
      
      <div class="col-lg-3">
          <label for="hr" class="col-sm-2 control-label">Hour </label>
      <div class="form-group">
                <select class='form-control' name="hr" >
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
      </div>
      </div>
    <div class="table-responsive">
                 <table class="ui celled table table table-hover">
                  <thead>
                      <tr>
                      <th>Student RollNo</th>
                      <th>Student Name</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                
                   <%
                       int i=0;
                      while(rs.next()){
                          i++;
                      // String hr="hr"+i;
                       String an="an"+i;
                       String name="name"+i;
                       String id="id"+i;
                  %>
                
     <tbody>
         <tr>  
             
            <td><input style="border:none;width:120px;font-weight:bold" name="<%=id%>" value="<%=rs.getString(1)%>" readonly></td>
            <td><input style="border:none;width:200px;font-weight:bold;" name="<%=name%>" value="<%=rs.getString(2)%>" readonly></td>
              
              
                
          <td width=250>
              <select style="border:none;font-weight:bold" name="<%=an%>">
                  <option>Present</option>
                  <option>Absent</option>
              </select>
           </td>   
           </tr>  
        
      </tbody>   
      
      <%;
          }
          rs.close();
          ps.close();
      %>
            </table>
            
             <c:if test="${not empty alertMsg}">
                <script>
                    swal("Attendance","Done","success");
                </script>
            </c:if>
 <div class="form-group">
                <div class="col-sm-offset-10 col-sm-10">
                    <button type="submit" class="btn btn-success" name="">Save</button>
                    <%
                        }
                        catch(Exception e){
                    %>
                    <script>
                        swal("Access Denied !!","","error")
                        </script>
                    <%
                        }
                    %>
            </div>
            </div>  
   </div> <!--form-container-->
</div><!--container-->
    </form>
</div>
    </body>
</html>
