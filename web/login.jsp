<%-- 
    Document   : login
    Created on : Jan 22, 2018, 8:50:34 PM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/dist/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="css/dist/sweetalert.js" type="text/javascript"></script>
        <script src="css/dist/sweetalert.min.js" type="text/javascript"></script>   
    </head>
    <body>
        <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Welcome.</strong>Please login.</h1>
      
      <form action="validate.jsp" method="post">
          <input type="text" name="user" placeholder="Username" value="${cookie['username'].value}" required="required" class="input-txt" autofocus/>
          <input type="password" name="pass" value="${cookie['password'].value}" placeholder="Password" required="required" class="input-txt"/>
          <div class="login-footer">
              <a href="register.jsp" class="lnk">
              <span class="icon icon--min">ಠ╭╮ಠ</span> 
              New User?Click Here To Register
            </a>
              
              <c:if test="${not empty alertMsg}">
                <script>
                    swal("Username & Password Is Incorrect !!","Please Check It","error");
                </script>
            </c:if>
            
            <button type="submit" class="btn btn--right">Sign in</button>
          </div>
      </form>
  </div>
        </div>
    </body>
</html>
