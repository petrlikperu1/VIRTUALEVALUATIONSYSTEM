package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import UTIL.Constantes;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"SUNAT\">\r\n");
      out.write("    <title>.:: Pagina de Mensajes ::.</title>    \r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/bootstrap.min_1.css\">\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath());
      out.write("/jquery-ui/jquery.js\"></script>   \r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath());
      out.write("/js/bootstrap.min1.js\" ></script>\r\n");
      out.write("    <script src=\"/a/js/libs/blockUI/jquery.blockUI.js\" type=\"text/javascript\"></script>\r\n");
      out.write("    <style type=\"text/css\">\t\t    \r\n");
      out.write("\t\t  .div_cuerpo\r\n");
      out.write("                  {\r\n");
      out.write("                    margin-top: 15px;\r\n");
      out.write("                   }\r\n");
      out.write("    </style>\r\n");
      out.write("    <script>\r\n");
      out.write("    function  iniciar1(){\r\n");
      out.write("        var url=\"");
      out.print(request.getContextPath());
      out.write("/Seguridad/loginAcceso/Docente/FrmLoginPersonal.jsp\";\t \r\n");
      out.write("        var opciones=\"toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=1500,height=2000\";\r\n");
      out.write("        window.open(url,\"otra\",opciones);\r\n");
      out.write("     }\r\n");
      out.write("    function  iniciar2(){\r\n");
      out.write("        var url=\"");
      out.print(request.getContextPath());
      out.write("/Seguridad/loginAcceso/Alumno/FrmLoginAlumno.jsp\";\t \r\n");
      out.write("        var opciones=\"toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width=1500,height=2000\";\r\n");
      out.write("        window.open(url,\"otra\",opciones);\r\n");
      out.write("     }       \r\n");
      out.write("    </script> \r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container div_cuerpo\" id=\"div_cuerpo1\">\t\r\n");
      out.write("        <div class=\"panel panel-primary\">\r\n");
      out.write("            <div class=\"panel-heading text-center\" >\r\n");
      out.write("                <h4>PERUVIAN UNIVERSITY SIMON BOLIVAR</h4>\r\n");
      out.write("               \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"alert alert-info\">\r\n");
      out.write("                                    <h4><strong><center> ONLINE EVALUATION SYSTEM</center></strong></h4>                            \r\n");
      out.write("                        </div>\r\n");
      out.write("            <div class=\"panel-body\">\r\n");
      out.write("\t\t\t    <div class=\"row\">\r\n");
      out.write("                                \r\n");
      out.write("\t\t\t    \t<div class=\"col-md-6 col-md-offset-3\">\r\n");
      out.write("                                    <center>  <img  src=\"imagenes/seguridadloguin.png\"></center>\r\n");
      out.write("\t\t\t    \t</div>\r\n");
      out.write("\t\t\t    </div>\t\t\t\r\n");
      out.write("\t\t\t    <div class=\"row\">\r\n");
      out.write("\t\t\t    \t<div class=\"col-md-6 col-md-offset-3 error text-center\">Access to the system\r\n");
      out.write("\t\t\t    \t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t    <div class=\"row\">\r\n");
      out.write("\t\t\t    \t<div class=\"col-md-6 col-md-offset-3\"><HR size=\"3px\" color=\"#0000ff\">\r\n");
      out.write("\t\t\t    \t</div>\r\n");
      out.write("\t\t\t\t</div>\t\t\t\r\n");
      out.write("\t\t\t   \r\n");
      out.write("\t\t\t    <div class=\"row\">\r\n");
      out.write("\t\t\t    \t<div class=\"col-md-6 col-md-offset-3 soluc\">\r\n");
      out.write("                                    <center> \r\n");
      out.write("                                        <button    class=\"btn btn-success btn-xlarge\" onclick=\"iniciar1()\" >\r\n");
      out.write("                                            <center>  <img  src=\"imagenes/personal.png\" width=\"100px\" height=\"100px\"></center><br>\r\n");
      out.write("                                            Personal\r\n");
      out.write("                                        </button> \r\n");
      out.write("                                        <button    class=\"btn btn-warning btn-xlarge\"  onclick=\"iniciar2()\" >\r\n");
      out.write("                                            <center>  <img  src=\"imagenes/alumno.png\" width=\"100px\" height=\"100px\"></center><br>\r\n");
      out.write("                                            Alumno\r\n");
      out.write("                                        </button> \r\n");
      out.write("               \r\n");
      out.write("                                    </center>\r\n");
      out.write("                                    \r\n");
      out.write("                                    \r\n");
      out.write("\t\t\t    \t</div>\r\n");
      out.write("\t\t\t    </div>\t\t\t\r\n");
      out.write("\t\t\t   \r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"panel-footer text-center\">               \r\n");
      out.write("                Online Assessment System - Copyright &copy; 2015-2017\r\n");
      out.write("            </div>            \r\n");
      out.write("        </div>\t\t\t\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
