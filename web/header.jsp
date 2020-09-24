<%-- 
    Document   : header
    Created on : Jan 27, 2018, 7:48:55 AM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance</title>
        
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css'>
        <link href="css/semantic.min.css" rel="stylesheet" type='text/css'>
        <link href="css/templatemo_style.css"  rel='stylesheet' type='text/css'>
        <link href="css/mystyle.css"  rel='stylesheet' type='text/css'>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    
    <body style="background-color: #5D92BA;">
        <div class="templatemo-top-menu">
            <div class="container">
                <div class="navbar navbar-default" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                            <a href="" class="navbar-brand"><img src="image/AP.jpg" alt="AP" title="AP LOGO"/>
                            <h4 style="text-align:left;color:windowtext;font-size:15px;">Welcome ${fn:toUpperCase(sessionScope.user)}</h4></a>
                        </div>
                        <div class="collapse navbar-collapse" id="mynavbar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;"  role="menu" aria-labelledby="dropdownMenu" aria-expanded="false">
                                <li><a href="home.jsp" class="">Home</a></li>
                                <li><a href="student.jsp" class="">Students</a></li>
                                <li><a href="teacher.jsp" class="external-link">Staffs</a></li>
                                <li><a href="subject.jsp" class="external-link">Subjects</a></li>
                                <li><a href="Search.jsp" class="external-link">Individual Report</a></li>
                                 <li><a href="attendance_report.jsp" class="external-link">Overall Report</a></li>
                                <li><a href="attendanceform.jsp" class="external-link">Do Attendance</a></li>
                                  <li><a href="logout.jsp" class="external-link" >Log Out</a></li>
                             </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
    </body>
</html>
