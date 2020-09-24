package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/bootstrap-theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/mystyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/semantic.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("  <div class=\"container\">\n");
      out.write("         <div class=\"row\">\n");
      out.write("                 <div class=\"templatemo-line-header\" style=\"margin-top: 0px;\" >\n");
      out.write("                        <div class=\"text-center\">\n");
      out.write("                            <hr class=\"team_hr team_hr_left hr_gray\"/><span class=\"span_blog txt_darkgrey\">Individual Searching</span>\n");
      out.write("                            <hr class=\"team_hr team_hr_right hr_gray\" />\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("    <div class=\"form-container\">\n");
      out.write("\n");
      out.write("    <form method=\"post\" action=\"Search_Rpt.php\" role=\"form\" class=\"search-form\" style=\"width: 70%\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <!-- <div class=\"row\"> -->\n");
      out.write("         <div class=\"col-lg-8\">\n");
      out.write("          <div class=\"form-group\">\n");
      out.write("\n");
      out.write("           <label for=\"student\" >Student Name</label>\n");
      out.write("          <select name='name' class='form-control' >\t\t\t\n");
      out.write("               <option value=$stid[1]></option>\n");
      out.write("          </select>\n");
      out.write("         </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"session\" > Session</label>\n");
      out.write("          <select name='session' class='form-control'>\t\t\t\n");
      out.write("          <option value=$session[7]>$session[7] </option>\n");
      out.write("           </select>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("          <label for=\"date\" >Date: </label> <label style=\"color:red\" >(date should be like YY-MM-DD)</label>\n");
      out.write("          <input type=\"date\" name=\"date\" class=\"form-control\">\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-8\"><br>\n");
      out.write("          <button type=\"submit\" class=\"btn btn-success btn-lg btn-block\" value=\"Search\" name=\"search\">Search</button>\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          </form>\n");
      out.write("          </div> <!--form-container--> \n");
      out.write("          </div><!--container--> \n");
      out.write("    \n");
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
