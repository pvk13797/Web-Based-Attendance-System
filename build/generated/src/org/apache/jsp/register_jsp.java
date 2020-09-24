package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Registration</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script>\n");
      out.write("            function p()\n");
      out.write("            {\n");
      out.write("                var np,cp;\n");
      out.write("                \n");
      out.write("                np=form1.np.value;\n");
      out.write("                cp=form1.cp.value;\n");
      out.write("                \n");
      out.write("                if(np.length<8)\n");
      out.write("                {\n");
      out.write("                    alert(\"Password Is Too Short\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else if(np.length>20)\n");
      out.write("                {\n");
      out.write("                    alert(\"Password Is Too Long\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else if(np!=cp)\n");
      out.write("                {\n");
      out.write("                    alert(\"Password Does Not Match\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                else{\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"container\">\n");
      out.write("  <div class=\"login\">\n");
      out.write("  \t<h1 class=\"login-heading\">\n");
      out.write("      <strong>Welcome.</strong>Register Here</h1>\n");
      out.write("      \n");
      out.write("        <form name=\"form1\" onsubmit=\"return p()\" action=\"regdb.jsp\" method=\"post\">\n");
      out.write("            <input type=\"text\" placeholder=\"First Name*\" required=\"required\" name=\"fn\" class=\"input-txt\"/>\n");
      out.write("            <input type=\"text\" placeholder=\"Last Name*\" required=\"required\" name=\"ln\" class=\"input-txt\"/>\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Mail-ID\" required=\"required\" name=\"em\" class=\"input-txt\"/>\n");
      out.write("            <input type=\"text\" placeholder=\"New Username\" required=\"required\" name=\"cus\" class=\"input-txt\"/>\n");
      out.write("            <input type=\"password\" placeholder=\"Enter Password\" required=\"required\" name=\"np\" class=\"input-txt\"/>                   \n");
      out.write("            <input type=\"password\" placeholder=\"Confirm Password\" required=\"required\" name=\"cp\" class=\"input-txt\"/>\n");
      out.write("                  <div class=\"login-footer\">\n");
      out.write("                      <a href=\"login.jsp\" class=\"lnk\">\n");
      out.write("              <span class=\"icon icon--min\"></span> \n");
      out.write("              Already Register? Click Here To Login\n");
      out.write("            </a>\n");
      out.write("                <button type=\"reset\" class=\"btn btn--right\">Clear</button>\n");
      out.write("                <button type=\"submit\" class=\"btn btn--right\">Sign up</button>\n");
      out.write("          </div>\n");
      out.write("      </form>\n");
      out.write("  </div>\n");
      out.write("</div>    \n");
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
