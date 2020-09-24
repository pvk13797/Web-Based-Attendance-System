<%-- 
    Document   : student_entry
    Created on : Jan 27, 2018, 8:16:18 AM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
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
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Students Entry</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
                
<div class="container">
<div class="row">
    <form class="form-horizontal" role="form" method="post" action="student_entry_db.jsp">
        
<div class="form-group">
<label for="batch" class="col-sm-2 control-label">Batch</label>
<div class="col-sm-6">
<select name="batch" class="form-control" id="stu_batch">
    <option>---Select---</option>
    <option>2015-2018</option>
    <option>2016-2019</option>
    <option>2017-2020</option>
</select>
</div>
</div>
 
<div class="form-group">
<label for="id" class="col-sm-2 control-label">Student ID(*)</label>
<div class="col-sm-6">
<input type="text" name="id" class="form-control" id="stu_id" placeholder="Student ID">
</div>
</div>
 
<div class="form-group">
<label for="name" class="col-sm-2 control-label">Student Name(*)</label>
<div class="col-sm-6">
<input type="text" name="name" class="form-control" id="stu_name" placeholder="Student Name">
</div>
</div>
    
    <div class="form-group">
<label for="dob" class="col-sm-2 control-label">Date Of Birth</label>
<div class="col-sm-6">
<input type="date" name="dob" class="form-control datepicker" id="stu_dob"/>
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
<label for="course" class="col-sm-2 control-label">Course </label>
<div class="col-sm-6">
<select name="course" class="form-control" id="stu_course">
    <option>---Select---</option>
    <option>UG</option>
    <option>PG</option>
</select>
</div>
</div>
    
    <div class="form-group">
<label for="dept" class="col-sm-2 control-label">Department </label>
<div class="col-sm-6">
<select name="dept" class="form-control" id="stu_dept">
    <option>---Select---</option>
    <option>English</option>
    <option>Tamil</option>
    <option>Mathematics</option>
    <option>Computer Science</option>
    <option>Physics</option>
    <option>Chemistry</option>
</select>
</div>
</div>
    
    <div class="form-group">
<label for="year" class="col-sm-2 control-label">Year </label>
<div class="col-sm-6">
<select name="year" class="form-control" id="stu_yr">
    <option>---Select---</option>
    <option>1</option>
    <option>2</option>
    <option>3</option>
</select>
</div>
</div>
    
    <div class="form-group">
<label for="mail" class="col-sm-2 control-label">E-Mail </label>
<div class="col-sm-6">
<input type="text" name="mail" class="form-control" id="stu_mail" placeholder="Enter Valid E-Mail">
</div>
</div>
    
<div class="form-group">
<label for="num" class="col-sm-2 control-label">Mobile Number</label>
<div class="col-sm-6">
    <input type="number" name="num" class="form-control" id="stu_num" placeholder="Contact Number">
</div>
</div>
    
<div class="form-group">
<label for="add" class="col-sm-2 control-label">Address </label>
<div class="col-sm-6">
<input type="text" row="3" name="address" class="form-control" id="stu_add" placeholder="Please Enter Your Address">
</div>
</div>
    
    <div class="form-group">
<label for="sem" class="col-sm-2 control-label">Semester </label>
<div class="col-sm-6">
<select name="semester" class="form-control" id="stu_sem">
    <option>---Select---</option>
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
    <option>5</option>
    <option>6</option>
</select>
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
        <h4 style="color:white;text-align:center">${requestScope.msg}</h4>
    </body>
</html>