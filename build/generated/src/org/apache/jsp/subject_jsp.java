package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class subject_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


          Connection con;
          PreparedStatement ps;
        

            ResultSet rs;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/db.jsp");
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
      out.write("                                <li><a href=\"subject.jsp\" class=\"external-link\">Subjects</a></li>\n");
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
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            ps=con.prepareStatement("select * from subject");
            rs=ps.executeQuery();
        
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("              <div class=\"row\">\n");
      out.write("                    <div class=\"templatemo-line-header\" style=\"margin-top: 0px;\" >\n");
      out.write("                        <div class=\"text-center\">\n");
      out.write("                            <hr class=\"team_hr team_hr_left hr_gray\"/><span class=\"span_blog txt_darkgrey\">Subjects Details</span>\n");
      out.write("                            <hr class=\"team_hr team_hr_right hr_gray\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("    <p><a href=\"subject_entry.jsp\" class=\"ui blue tiny button \"><i class=\"glyphicon glyphicon-plus\"> </i>Insert</a></p>\n");
      out.write("                <div class=\"table-responsive\">\n");
      out.write("                 <table class=\"ui celled table table table-hover\">\n");
      out.write("                  <thead>\n");
      out.write("                    <tr> \n");
      out.write("                        <th>SI.No</th>\n");
      out.write("                      <th>Subject Code</th>\n");
      out.write("                      <th>Subject Name</th>\n");
      out.write("                      <th>Semester</th>\n");
      out.write("                    </tr>\n");
      out.write("                  </thead>\n");
      out.write("                  \n");
      out.write("                  ");

                      while(rs.next()){
                  
      out.write("\n");
      out.write("      <tbody>\n");
      out.write("            <tr>       \n");
      out.write("                <td>");
      out.print(rs.getInt(1));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getInt(4));
      out.write("</td>\n");
      out.write("            </tr>    \n");
      out.write("      </tbody>     \n");
      out.write("      \n");
      out.write("      ");

          }
          rs.close();
          ps.close();
      
      out.write("\n");
      out.write("             </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div> <!--table-responsive-->\n");
      out.write("</div><!--container-->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
