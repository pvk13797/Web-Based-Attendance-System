package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

static private org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:toUpperCase", org.apache.taglibs.standard.functions.Functions.class, "toUpperCase", new Class[] {java.lang.String.class});
}

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/slider.jsp");
    _jspx_dependants.add("/slidebar.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Attendance</title>\n");
      out.write("        \n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type='text/css'>\n");
      out.write("        <link href=\"css/templatemo_style.css\"  rel='stylesheet' type='text/css'>\n");
      out.write("        <link href=\"css/mystyle.css\"  rel='stylesheet' type='text/css'>\n");
      out.write("        <script src=\"js/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body style=\"background-color: #5D92BA;\">\n");
      out.write("        <div class=\"templatemo-top-menu\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar navbar-default\" role=\"navigation\">\n");
      out.write("                    <div class=\"container-fluid\">\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#mynavbar\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                <span class=\"icon-bar\"></span>\n");
      out.write("                                </button>\n");
      out.write("                            <a href=\"\" class=\"navbar-brand\"><img src=\"image/AP.jpg\" alt=\"AP\" title=\"AP LOGO\"/>\n");
      out.write("                            <h4 style=\"text-align:left;color:windowtext;font-size:15px;\">Welcome ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${fn:toUpperCase(sessionScope.user)}", java.lang.String.class, (PageContext)_jspx_page_context, _jspx_fnmap_0));
      out.write("</h4></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"mynavbar\">\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\" style=\"margin-top: 40px;\"  role=\"menu\" aria-labelledby=\"dropdownMenu\" aria-expanded=\"false\">\n");
      out.write("                                <li><a href=\"\" class=\"\">Home</a></li>\n");
      out.write("                                <li><a href=\"student.jsp\" class=\"\">Students</a></li>\n");
      out.write("                                <li><a href=\"teacher.jsp\" class=\"external-link\">Staffs</a></li>\n");
      out.write("                                <li><a href=\"subject.jsp\" class=\"external-link\">Subjects</a></li>\n");
      out.write("                                <li><a href=\"Search.jsp\" class=\"external-link\">Individual Report</a></li>\n");
      out.write("                                 <li><a href=\"attendance_report.jsp\" class=\"external-link\">Overall Report</a></li>\n");
      out.write("                                <li><a href=\"attendanceform.jsp\" class=\"external-link\">Do Attendance</a></li>\n");
      out.write("                                  <li><a href=\"logout.jsp\" class=\"external-link\" >Log Out</a></li>\n");
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
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <!-- Carousel -->\n");
      out.write("            <div id=\"templatemo-carousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                <!-- Indicators -->\n");
      out.write("                <ol class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#templatemo-carousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#templatemo-carousel\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#templatemo-carousel\" data-slide-to=\"2\"></li>\n");
      out.write("                </ol>\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"item active\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"carousel-caption\">\n");
      out.write("                                <h1>WELCOME TO SAVING THE TIME </h1>\n");
      out.write("                                <h1>Developed By SAHAR HASSAN (AFGHAN) with the HELP of SUPERVISOR DR ZUBAIR ASGHAR</h1>\n");
      out.write("                                <p>This is designed by SAHAR HASSAN lets see...</p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                                <div class=\"carousel-caption\">\n");
      out.write("                                    <div class=\"col-sm-6 col-md-6\">\n");
      out.write("\n");
      out.write("                                    \t<h1>WHAT IS THE BENEIFITS?</h1>\n");
      out.write("                                        <p>SEXPLAINATION ABOUT BENIFITS OF ELECTRONICALLY ATTENDANCE.</p>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-sm-6 col-md-6\">\n");
      out.write("                                    \t<h1>MY PROJECT ABOUT IT </h1>\n");
      out.write("                                        <p>it safe time and etc etc etc some more about ...</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <div class=\"carousel-caption\">\n");
      out.write("                                \t<h1>HOW IT SAVES TIME</h1>\n");
      out.write("                                    <p>explaination about benefits of attendance you may cilck Read More Button and enjoy...</p>\n");
      out.write("                                    <p><a class=\"btn btn-lg btn-orange\" href=\"#\" role=\"button\">Read More</a></p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <a class=\"left carousel-control\" href=\"#templatemo-carousel\" data-slide=\"prev\"><span class=\"glyphicon glyphicon-chevron-left\"></span></a>\n");
      out.write("                <a class=\"right carousel-control\" href=\"#templatemo-carousel\" data-slide=\"next\"><span class=\"glyphicon glyphicon-chevron-right\"></span></a>\n");
      out.write("            </div><!-- /#templatemo-carousel -->\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"templatemo-welcome\" id=\"templatemo-welcome\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"templatemo-slogan text-center\">\n");
      out.write("                    <span class=\"txt_darkgrey\">Welcome to </span><span class=\"txt_orange\">Home Page</span>\n");
      out.write("                    <p class=\"txt_slogan\">\n");
      out.write("                </div>\t\n");
      out.write("            </div>\n");
      out.write("        </div>   \n");
      out.write("        \n");
      out.write("    <div id=\"templatemo-blog\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\n");
      out.write("     <div id=\"entry\" class=\"col-lg-4\">\n");
      out.write("                    <div class=\"panel panel-primary\">\n");
      out.write("                      <div class=\"panel-heading\">\n");
      out.write("                            <b><i class=\"fa fa-pencil\"> </i> Entries</b>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"list-group\">\n");
      out.write("                      <a href=\"index.php\" class=\"list-group-item\">Home</a>\n");
      out.write("                        <a href=\"student_entry.php\" class=\"list-group-item\">Student Entry</a>\n");
      out.write("                        <a href=\"teacher_entry.php\" class=\"list-group-item\">Teacher Entry</a>\n");
      out.write("                        <a href=\"subject_entry.php\" class=\"list-group-item\">Subject Entry</a>\n");
      out.write("                        <a href=\"AttendenceForm.php\" class=\"list-group-item\">Do Attendance</a>\n");
      out.write("                    \n");
      out.write("                      </div>\n");
      out.write("\n");
      out.write("                    </div>                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                <div class=\"blog_box\">\n");
      out.write("                    <div class=\"col-sm-5 col-md-6 blog_post\">\n");
      out.write("                        <ul class=\"list-inline\">\n");
      out.write("                        <li>    \n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                        <p class=\"blog_text\">\n");
      out.write("                            The Institute of computing and information technology, since its inception in 1987 has been focusing on human resource development through its various programs. With the rapid development in computing technologies and the associated growth in information technology (IT) applications, the importance of the computer sciences as a discipline has become of paramount importance. The availability of properly trained computer professionals determines the extent to which IT applications can be developed. This situation has created new and exciting opportunities for those who are well qualified and properly trained in IT. The BSCS and MCS programs at the Institute of Computing & Information Technology (ICIT) offer an excellent opportunity to individuals for a career in the IT field. \n");
      out.write("                            With a first class qualified faculty, laboratories equipped wiht the state-of-the-art computing facilities and a well stocked library, the ICIT offers an opportunity for achieving standard and high quality computer science education in PAKISTAN. The said objective in mind, the institute has started MS and Ph.D programs.</p>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div> <!-- /.blog_post 1 --> \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("           </div>\n");
      out.write("    </div>\n");
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
