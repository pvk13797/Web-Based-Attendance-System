<%-- 
    Document   : student_update
    Created on : Jan 27, 2018, 8:21:50 AM
    Author     : Prasanna Venkat
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<%@include file="db.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Update</title>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/semantic.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/templatemo_style.css" rel="stylesheet" type="text/css"/>
        
        <script language="javascript">
            function back(){
                form1.action="student.jsp";
                form1.submit();
            }
        </script>
    </head>
    <body>
        
        <%!
            ResultSet rs;
            int year,semester;
            String id,name,gender,dob,course,dept,mail,num,address,batch;
        %>
        
        <%
            if(request.getParameter("id")!=null){
                id=request.getParameter("id");
            }
            else
            {
                id=session.getAttribute("id").toString();
            }
         
            ps=con.prepareStatement("select * from student where id=?");
            ps.setString(1,id);
            rs=ps.executeQuery();
                
            if(rs.next()){
                session.setAttribute("id",id);
                name=rs.getString(2);
                batch=rs.getString(3);
                dob=rs.getString(4);
                gender=rs.getString(5);
                course=rs.getString(6);
                dept=rs.getString(7);
                year=rs.getInt(8);
                mail=rs.getString(9);
                num=rs.getString(10);
                address=rs.getString(11);
                semester=rs.getInt(12);
                
            }
            rs.close();
            ps.close();
        %>
        
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
    <form class="form-horizontal" role="form" name="form1" method="post" action="student_update.jsp">
        
<div class="form-group">
<label for="batch" class="col-sm-2 control-label">Batch</label>
<div class="col-sm-6">
    <select name="t12" class="form-control" id="stu_batch" value="<%=batch%>">
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
    <input type="text" name="t1" class="form-control" id="stu_id" value="<%=id%>" readonly>
</div>
</div>
 
<div class="form-group">
<label for="name" class="col-sm-2 control-label">Student Name(*)</label>
<div class="col-sm-6">
    <input type="text" name="t2" class="form-control" id="stu_name" value="<%=name%>" required>
</div>
</div>
    
    <div class="form-group">
<label for="dob" class="col-sm-2 control-label">Date Of Birth</label>
<div class="col-sm-6">
    <input type="date" name="t3" class="form-control datepicker" id="stu_dob" value="<%=dob%>" required>
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
<label for="course" class="col-sm-2 control-label">Course </label>
<div class="col-sm-6">
    <select name="t5" class="form-control" id="stu_course" value="<%=course%>" readonly>
    <option>---Select---</option>
    <option>UG</option>
    <option>PG</option>
</select>
</div>
</div>
    
    <div class="form-group">
<label for="dept" class="col-sm-2 control-label">Department </label>
<div class="col-sm-6">
    <select name="t6" class="form-control" id="stu_dept" value="<%=dept%>" readonly>
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
    <select name="t7" class="form-control" id="stu_yr" value="" required>
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
    <input type="text" name="t8" value="<%=mail%>" class="form-control" id="stu_mail" required>
</div>
</div>
    
<div class="form-group">
<label for="num" class="col-sm-2 control-label">Mobile Number</label>
<div class="col-sm-6">
    <input type="number" name="t9" value="" class="form-control" id="stu_num" required>
</div>
</div>
    
<div class="form-group">
<label for="add" class="col-sm-2 control-label">Address </label>
<div class="col-sm-6">
<input type="text" row="3" name="t10" value="" class="form-control" id="stu_add" required>
</div>
</div>
    
    <div class="form-group">
<label for="sem" class="col-sm-2 control-label">Semester </label>
<div class="col-sm-6">
<select name="t11" class="form-control" value="" id="stu_sem" required>
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
<button type="submit" class="btn btn-success" id="register">Update</button>
<input type="button" class="btn btn-danger" name="s1" value="Back" onclick="back();"/>
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
            String ucourse=request.getParameter("t5");
            String udept=request.getParameter("t6");
            String uyear=request.getParameter("t7");
            String umail=request.getParameter("t8");
            String unum=request.getParameter("t9");
            String uaddress=request.getParameter("t10");
            String usemester=request.getParameter("t11");
            String ubatch=request.getParameter("t12");
            
            ps=con.prepareStatement("update student set Name=?,Batch=?,DOB=?,Gender=?,Course=?,Dept=?,Year=?,Mail=?,Num=?,Address=?,Semester=? where ID=?");
            
            ps.setString(1,uname);
            ps.setString(2,ubatch);
            ps.setString(3,udob);
            ps.setString(4,ugender);
            ps.setString(5,ucourse);
            ps.setString(6,udept); 
            ps.setString(7,uyear);
            ps.setString(8,umail);
            ps.setString(9,unum);
            ps.setString(10,uaddress);
            ps.setString(11,usemester);
            ps.setString(12,uid);
            
            ps.executeUpdate();
            ps.close();
            
            
            response.sendRedirect("student.jsp");
        %>
    </c:if>
    </body>
</html>
