<%-- 
    Document   : Greetings
    Created on : Mar 3, 2018, 11:54:49 AM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/dist/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="css/dist/sweetalert.js" type="text/javascript"></script>
        <script src="css/dist/sweetalert.min.js" type="text/javascript"></script>
        <script>
            var myDate=new Date();
            
            if(myDate.getHours()<12){
                swal("Good Morning!","Professor","info");
            }
            else if(myDate.getHours()>=12 && myDate.getHours()<=17){
                swal("Good Afternoon!","Professor","info");
            }
            else if(myDate.getHours()>17 && myDate.getHours()<=24){
                swal("Good Evening!","Professor","info");
            }
            else
            {
                swal("Good Night!","Professor","info");
            }
        </script>
    </head>
    <body>
    </body>
</html>
