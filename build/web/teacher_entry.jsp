<%-- 
    Document   : teacher_entry
    Created on : Feb 1, 2018, 12:25:38 AM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <div class="container">
             <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Staff's Entry</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
                
<div class="container">
<div class="row">
    <form class="form-horizontal" role="form" method="post" action="teacher_entry_db.jsp">
 
<div class="form-group">
<label for="id" class="col-sm-2 control-label">Teacher ID(*)</label>
<div class="col-sm-6">
<input type="text" name="id" class="form-control" id="stf_id" placeholder="Staff ID">
</div>
</div>
 
<div class="form-group">
<label for="name" class="col-sm-2 control-label">Staff Name(*)</label>
<div class="col-sm-6">
<input type="text" name="fn" class="form-control" id="stf_fname" placeholder="Staff Name">
</div>
</div>
    
    <div class="form-group">
<label for="dob" class="col-sm-2 control-label">Date Of Birth</label>
<div class="col-sm-6">
<input type="date" name="dob" class="form-control datepicker" id="stf_dob"/>
</div>
</div>
 
<div class="form-group">
<label for="" class="col-sm-2 control-label">Gender </label>
<div class="col-sm-6">
<label class="radio-inline">
<input type="radio" name="gender" id="gender1" value="Male">Male
</label>
<label class="radio-inline">
<input type="radio" name="gender" id="gender2" value="Female">Female
</label>
</div>
</div>
 
    <div class="form-group">
<label for="mail" class="col-sm-2 control-label">E-Mail </label>
<div class="col-sm-6">
<input type="text" name="mail" class="form-control" id="stf_mail" placeholder="Enter Valid E-Mail">
</div>
</div>
    
<div class="form-group">
<label for="num" class="col-sm-2 control-label">Mobile Number</label>
<div class="col-sm-6">
    <input type="number" name="num" class="form-control" id="stf_num" placeholder="Contact Number">
</div>
</div>
    
        <div class="form-group">
<label for="degree" class="col-sm-2 control-label">Degree </label>
<div class="col-sm-6">
<input type="text" name="degree" class="form-control" id="stf_degree" placeholder="Degree">
</div>
</div>
        
        <div class="form-group">
<label for="add" class="col-sm-2 control-label">Address </label>
<div class="col-sm-6">
<input type="text" row="3" name="address" class="form-control" id="stf_add" placeholder="Please Enter Your Address">
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
        <h4 style="text-align:center;color:white;">${requestScope.msg}</h4>
    </body>
</html>
