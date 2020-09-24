<%-- 
    Document   : home
    Created on : Apr 9, 2018, 11:34:42 PM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@include file="slider.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="templatemo-welcome" id="templatemo-welcome">
            <div class="container">
                <div class="templatemo-slogan text-center">
                    <span class="txt_darkgrey">Welcome to </span><span class="txt_orange">Home Page</span>
                    <p class="txt_slogan">
                </div>	
            </div>
        </div>   
        
    <div id="templatemo-blog">
            <div class="container">
                <div class="row">
                    <%@include file="slidebar.jsp" %>
                <div class="blog_box">
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                        <li>    
                        <div class="clearfix"> </div>
                        <p class="blog_text">
                            Web Based Attendance Management System is easy to use and yet very powerful attendance management system that has a firm grip over colleges,schools,office etc.

The main feature of Web Based Attendance Management System users can create ID & Password to protected their accounts.

Web Based Attendance Management System Provides users an using their name along with a password that allows them to login to their accounts from anywhere.

                            </p>
                            </li>
                        </ul>
                    </div> <!-- /.blog_post 1 --> 
                </div>
              </div>
           </div>
    </div>
    </body>
</html>
