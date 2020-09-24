<%-- 
    Document   : subject_entry
    Created on : Feb 1, 2018, 12:41:43 AM
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
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">Subject's Entry</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                </div>
                
<div class="container">
<div class="row">
    <form class="form-horizontal" role="form" method="post" action="subject_entry_db.jsp">
 
<div class="form-group">
<label for="si" class="col-sm-2 control-label">SI.No</label>
<div class="col-sm-6">
<input type="text" name="sno" class="form-control" id="sub_si" placeholder="SI.NO">
</div>
</div>
        
        <div class="form-group">
<label for="code" class="col-sm-2 control-label">Subject Code(*)</label>
<div class="col-sm-6">
<input type="text" name="code" class="form-control" id="sub_code" placeholder="Enter Subject Code">
</div>
</div>
        
        <div class="form-group">
<label for="name" class="col-sm-2 control-label">Subject Name(*)</label>
<div class="col-sm-6">
<input type="text" name="name" class="form-control" id="sub_name" placeholder="Enter Subject Name">
</div>
</div>
        
        <div class="form-group">
<label for="sem" class="col-sm-2 control-label">Semester</label>
<div class="col-sm-6">
<input type="text" name="sem" class="form-control" id="sub_sem" placeholder="Enter Semester">
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
 </div><!--container-->
</div>
        </div>
        <h4 style="text-align:center;color:white;">${requestScope.msg}</h4>
    </body>
</html>
