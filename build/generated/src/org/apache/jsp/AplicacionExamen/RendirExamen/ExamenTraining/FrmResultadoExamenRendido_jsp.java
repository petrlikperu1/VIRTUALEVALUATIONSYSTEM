package org.apache.jsp.AplicacionExamen.RendirExamen.ExamenTraining;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FrmResultadoExamenRendido_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t\n");
      out.write("\t<title>RENDIR  EXAMEN</title>\n");
      out.write("</head>\n");
      out.write("<body >\n");
      out.write("\t\t<center>\n");
      out.write("                            <table class=\"FondoTabla\"  width=\"100%\">\n");
      out.write("                                <tr class=\"tituloTabla\"    >\n");
      out.write("                                        <td>-- RESULTADO DEL  EXAMEN  RENDIDO  --</td>\n");
      out.write("                                </tr>\n");
      out.write("\t\t\t   </table>\n");
      out.write("\t\t\t  <table  width=\"90%\">\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t  <td>\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<table width=\"90%\" border=\"0\" height=\"50\">\n");
      out.write("                                            <td width=\"47%\" colspan=\"6\" bgcolor=\"#87CEEB\" >\n");
      out.write("                                                       <center>  \n");
      out.write("                                                        <div  style=\"height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \n");
      out.write("                                                            <b>  Estadisticas </b>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        </center>\n");
      out.write("                                                    </td> \n");
      out.write("                                            <tr  bgcolor=\"#D5F7FF\" >\n");
      out.write("                                                    <td width=\"3%\"></td>\n");
      out.write("                                                    <td width=\"50%\"  bgcolor=\"#D5F7FF\">\n");
      out.write("                                                        <div  style=\"background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;\">\n");
      out.write("                                                          \n");
      out.write("                                                        </div>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td width=\"30%\" bgcolor=\"#ebebeb\">\n");
      out.write("                                                    <center>\n");
      out.write("                                                       FIN DEL  EXAMEN\n");
      out.write("                                                    </center>   \n");
      out.write("                                            </tr>\n");
      out.write("\t\t\t\t\t</table>\n");
      out.write("                                  \n");
      out.write("\t\t\t\t  </td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</center>\n");
      out.write("</body>\n");
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
