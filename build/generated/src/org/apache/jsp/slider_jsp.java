package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class slider_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div>\n");
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
