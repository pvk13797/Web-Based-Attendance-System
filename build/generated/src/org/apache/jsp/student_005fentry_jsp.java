package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class student_005fentry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Attendance</title>\n");
      out.write("        \n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/templatemo_style.css\"  rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"css/mystyle.css\"  rel='stylesheet' type='text/css'> \n");
      out.write("    </head>   \n");
      out.write("    \n");
      out.write("    <body style=\"background-color: #5D92BA;\">\n");
      out.write("        <div class=\"templatemo-top-menu\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                </button>\n");
      out.write("                            <a href=\"\" class=\"navbar-brand\"><img src=\"image/AP.jpg\" alt=\"AP\" title=\"AP LOGO\"/></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"navbar-collapse collapse\" id=\"templatemo-nav-bar\" class=\"external-link\">\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\" style=\"margin-top: 40px;\"  role=\"menu\" aria-labelledby=\"dropdownMenu\" aria-expanded=\"false\">\n");
      out.write("                                <li><a href=\"\" class=\"external-link\">Home</a></li>\n");
      out.write("                                <li><a href=\"student.jsp\" class=\"external-link\">Students</a></li>\n");
      out.write("                                <li><a href=\"\" class=\"external-link\">Teachers</a></li>\n");
      out.write("                                <li><a href=\"\" class=\"external-link\">Subjects</a></li>\n");
      out.write("                                 <li><a href=\"\" class=\"external-link\">Monthly Report</a></li>\n");
      out.write("                                <li><a href=\"\" class=\"external-link\">Overall Report</a></li>\n");
      out.write("                                  <li><a href=\"\" class=\"external-link\">Do Attendance</a></li>\n");
      out.write("\n");
      out.write("                                  <li><a href=\"login.jsp\" class=\"external-link\" >Log Out</a></li>\n");
      out.write("                             </ul>\n");
      out.write("                        </div><!--/.nav-collapse -->\n");
      out.write("                    </div><!--/.container-fluid -->\n");
      out.write("                </div><!--/.navbar -->\n");
      out.write("            </div> <!-- /container -->\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Student Registration</title>\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("             <div class=\"row\">\n");
      out.write("                    <div class=\"templatemo-line-header\" style=\"margin-top: 0px;\" >\n");
      out.write("                        <div class=\"text-center\">\n");
      out.write("                            <hr class=\"team_hr team_hr_left hr_gray\"/><span class=\"span_blog txt_darkgrey\">Students Entry</span>\n");
      out.write("                            <hr class=\"team_hr team_hr_right hr_gray\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("<div class=\"container\">\n");
      out.write("<div class=\"row\">\n");
      out.write("    <form class=\"form-horizontal\" role=\"form\" method=\"post\" action=\"student_entry_db.jsp\">\n");
      out.write(" \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"id\" class=\"col-sm-2 control-label\">Student ID(*)</label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<input type=\"text\" name=\"id\" class=\"form-control\" id=\"stu_id\" placeholder=\"Student ID\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"name\" class=\"col-sm-2 control-label\">Student Name(*)</label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<input type=\"text\" name=\"name\" class=\"form-control\" id=\"stu_name\" placeholder=\"Student Name\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<label for=\"dob\" class=\"col-sm-2 control-label\">Date Of Birth</label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<input type=\"date\" name=\"dob\" class=\"form-control datepicker\" id=\"stu_dob\"/>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"\" class=\"col-sm-2 control-label\">Gender </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<label class=\"radio-inline\">\n");
      out.write("<input type=\"radio\" name=\"gender\" id=\"gender1\" value=\"Male\">Male\n");
      out.write("</label>\n");
      out.write("<label class=\"radio-inline\">\n");
      out.write("<input type=\"radio\" name=\"gender\" id=\"gender2\" value=\"Female\">Female\n");
      out.write("</label>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"course\" class=\"col-sm-2 control-label\">Course </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<select name=\"course\" class=\"form-control\" id=\"stu_course\">\n");
      out.write("    <option>---Select---</option>\n");
      out.write("    <option>UG</option>\n");
      out.write("    <option>PG</option>\n");
      out.write("</select>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<label for=\"dept\" class=\"col-sm-2 control-label\">Department </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<select name=\"dept\" class=\"form-control\" id=\"stu_dept\">\n");
      out.write("    <option>---Select---</option>\n");
      out.write("    <option>English</option>\n");
      out.write("    <option>Tamil</option>\n");
      out.write("    <option>Mathematics</option>\n");
      out.write("    <option>Computer Science</option>\n");
      out.write("    <option>Physics</option>\n");
      out.write("    <option>Chemistry</option>\n");
      out.write("</select>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<label for=\"year\" class=\"col-sm-2 control-label\">Year </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<select name=\"year\" class=\"form-control\" id=\"stu_yr\">\n");
      out.write("    <option>---Select---</option>\n");
      out.write("    <option>1</option>\n");
      out.write("    <option>2</option>\n");
      out.write("    <option>3</option>\n");
      out.write("</select>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<label for=\"mail\" class=\"col-sm-2 control-label\">E-Mail </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<input type=\"text\" name=\"mail\" class=\"form-control\" id=\"stu_mail\" placeholder=\"Enter Valid E-Mail\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"num\" class=\"col-sm-2 control-label\">Mobile Number</label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("    <input type=\"number\" name=\"num\" class=\"form-control\" id=\"stu_num\" placeholder=\"Contact Number\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("<div class=\"form-group\">\n");
      out.write("<label for=\"add\" class=\"col-sm-2 control-label\">Address </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<input type=\"text\" row=\"3\" name=\"address\" class=\"form-control\" id=\"stu_add\" placeholder=\"Please Enter Your Address\">\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<label for=\"sem\" class=\"col-sm-2 control-label\">Semester </label>\n");
      out.write("<div class=\"col-sm-6\">\n");
      out.write("<select name=\"semester\" class=\"form-control\" id=\"stu_sem\">\n");
      out.write("    <option>---Select---</option>\n");
      out.write("    <option>1</option>\n");
      out.write("    <option>2</option>\n");
      out.write("    <option>3</option>\n");
      out.write("    <option>4</option>\n");
      out.write("    <option>5</option>\n");
      out.write("    <option>6</option>\n");
      out.write("</select>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    <br>\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("<div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("<button type=\"submit\" class=\"btn btn-success\" id=\"register\">Register</button>\n");
      out.write("<button type=\"reset\" class=\"btn btn-danger\" name=\"back\">Clear</button>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("</form>\n");
      out.write(" \n");
      out.write("</div><!-- end for class \"row\" -->\n");
      out.write("</div><!-- end for class \"container\" -->\n");
      out.write("        </div> \n");
      out.write("        <h4 style=\"color:white;text-align:center\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
