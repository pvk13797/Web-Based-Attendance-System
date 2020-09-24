<%-- 
    Document   : register
    Created on : Jan 22, 2018, 8:54:23 PM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/dist/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="css/dist/sweetalert.js" type="text/javascript"></script>
        <script src="css/dist/sweetalert.min.js" type="text/javascript"></script>
        <script>
            function p()
            {
                var np,cp,cus;
                
                cus=form1.cus.value;
                np=form1.np.value;
                cp=form1.cp.value;
                
                if(cus.length>3)
                {
                    swal("Enter Only 3 Character For Username","","warning");
                    return false;
                }
                
                else if(np.length<8)
                {
                    swal("Password Is Too Short","","warning");
                    return false;
                }
                else if(np.length>20)
                {
                    swal("Password Is Too Long","","warning");
                    return false;
                }
                else if(np!=cp)
                {
                    swal("Password Does Not Match","","warning");
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </head>
    <body>
         <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Welcome.</strong>Register Here</h1>
      
        <form name="form1" onsubmit="return p()" action="regdb.jsp" method="post">
            <input type="text" placeholder="Staff Name*" required="required" name="fn" class="input-txt" autofocus/>
            <input type="text" placeholder="Enter Mail-ID" required="required" name="em" class="input-txt"/>
            <input type="text" placeholder="New Username" required="Enter Only 3 Characters" name="cus" class="input-txt"/>
            <input type="password" placeholder="Enter New Password" required="" name="np" class="input-txt"/>                   
            <input type="password" placeholder="Confirm New Password" required="required" name="cp" class="input-txt"/>
                  <div class="login-footer">
                      <a href="login.jsp" class="lnk">
              <span class="icon icon--min"></span> 
              Already Register? Click Here To Login
            </a>
                <button type="reset" class="btn btn--right">Clear</button>
                <button type="submit" class="btn btn--right">Sign up</button>
          </div>
      </form>
  </div>
</div>    
    </body>
</html>