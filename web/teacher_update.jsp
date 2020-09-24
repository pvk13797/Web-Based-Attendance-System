<%-- 
    Document   : teacher_update
    Created on : Feb 1, 2018, 12:29:42 AM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<%@include file="header.jsp" %>
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
    </head>
    <body>
        <%!
            ResultSet rs;
            String id,fn,dob,gender,mail,num,degree,address;
        %>
        
        <%
            if(request.getParameter("id")!=null){
                id=request.getParameter("id");
            }
            else
            {
                id=session.getAttribute("id").toString();
            }
         
            ps=con.prepareStatement("select * from teacher where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
                
            if(rs.next()){
                session.setAttribute("id",id);
                fn=rs.getString(2);
                dob=rs.getString(3);
                gender=rs.getString(4);
                mail=rs.getString(5);
                num=rs.getString(6);
                degree=rs.getString(7);
                address=rs.getString(8);
                
            }
            rs.close();
            ps.close();
        %>
        
        <div class="container">
             <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Teacher's Entry</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
                
<div class="container">
<div class="row">
    <form class="form-horizontal" role="form" method="post" action="teacher_update.jsp">
 
<div class="form-group">
<label for="id" class="col-sm-2 control-label">Teacher ID(*)</label>
<div class="col-sm-6">
    <input type="text" name="t1" class="form-control" id="stf_id" value="<%=id%>" readonly>
</div>
</div>
 
<div class="form-group">
<label for="name" class="col-sm-2 control-label">Staff Name(*)</label>
<div class="col-sm-6">
    <input type="text" name="t2" class="form-control" id="stf_fname" value="<%=fn%>">
</div>
</div>
    
    <div class="form-group">
<label for="dob" class="col-sm-2 control-label">Date Of Birth</label>
<div class="col-sm-6">
    <input type="date" name="t3" class="form-control datepicker" id="stf_dob" value="<%=dob%>"/>
</div>
</div>
 
<div class="form-group">
<label for="" class="col-sm-2 control-label">Gender </label>
<div class="col-sm-6">
<label class="radio-inline">
<input type="radio" name="t4" id="gender1" value="Male">Male
</label>
<label class="radio-inline">
<input type="radio" name="t4" id="gender2" value="Female">Female
</label>
</div>
</div>
 
    <div class="form-group">
<label for="mail" class="col-sm-2 control-label">E-Mail </label>
<div class="col-sm-6">
    <input type="text" name="t5" class="form-control" value="<%=mail%>" id="stf_mail">
</div>
</div>
    
<div class="form-group">
<label for="num" class="col-sm-2 control-label">Mobile Number</label>
<div class="col-sm-6">
    <input type="number" name="t6" class="form-control" id="stf_num" value="<%=num%>">
</div>
</div>
    
        <div class="form-group">
<label for="degree" class="col-sm-2 control-label">Degree </label>
<div class="col-sm-6">
    <input type="text" name="t7" class="form-control" id="stf_degree" value="<%=degree%>">
</div>
</div>
        
        <div class="form-group">
<label for="add" class="col-sm-2 control-label">Address </label>
<div class="col-sm-6">
    <input type="text" row="3" name="t8" class="form-control" id="stf_add" value="<%=address%>">
</div>
</div>
    <br>
    <div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<button type="submit" class="btn btn-success" id="register">Register</button>
<button type="reset" class="btn btn-danger" name="back">Clear</button>
</div>
</div>
 
</form>
 
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->
        </div>
        <c:if test="${param.t1!=null}">
        <%
            String uid=request.getParameter("t1");
            String uname=request.getParameter("t2");
            String udob=request.getParameter("t3");
            String ugender=request.getParameter("t4");
            String umail=request.getParameter("t5");
            String unum=request.getParameter("t6");
            String udeg=request.getParameter("t7");
            String uadd=request.getParameter("t8");
            
            ps=con.prepareStatement("update teacher set Staff_Name=?,DOB=?,Gender=?,Mail=?,Num=?,Degree=?,Address=? where ID=?");
            
            ps.setString(1,uname);
            ps.setString(2,udob);
            ps.setString(3,ugender);
            ps.setString(4,umail);
            ps.setString(5,unum);
            ps.setString(6,udeg);
            ps.setString(7,uadd);
            ps.setString(8,uid);
            
            ps.executeUpdate();
            ps.close();
            
            
            response.sendRedirect("teacher.jsp");
        %>
    </c:if>
    </body>
</html>
