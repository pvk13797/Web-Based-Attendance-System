<%-- 
    Document   : validate
    Created on : Jan 22, 2018, 8:39:22 PM
    Author     : Prasanna Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            ResultSet rs;
            String uid,pwd;
            Cookie c1,c2;
        %>
        
        <%
            try{
            uid=request.getParameter("user");
            pwd=request.getParameter("pass");
            
            ps=con.prepareStatement("select username,password from register where username=? and password=?");
        
            ps.setString(1,uid);
            ps.setString(2,pwd);
            rs=ps.executeQuery();
            
            if(rs.next()){ 
                
                session.setAttribute("user",uid);
         
                        if(request.getParameter("c1")!=null){
                    
                    c1=new Cookie("user",uid);
                    c2=new Cookie("pass",pwd);
                    
                    c1.setMaxAge(3600);
                    c2.setMaxAge(3600);
                    
                    response.addCookie(c1);
                    response.addCookie(c2);
                }
                response.sendRedirect("attendanceform.jsp");
        %>
       
        
        
        <%
            }
            else
                {
                    request.setAttribute("alertMsg","Yes");
                    RequestDispatcher rd=application.getRequestDispatcher("/login.jsp");
                    rd.forward(request,response);
                }
            }
            catch(Exception e)
            {
            out.println("Access denied");
            }
        %>
    </body>
</html>
