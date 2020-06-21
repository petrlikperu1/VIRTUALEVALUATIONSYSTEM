package org.apache.jsp.AplicacionExamen.RendirExamen.ExamenTraining;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FrmRendirExamenesTrainingProgramados_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    int  i=1;
    
    
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \t<div class=\"container div_cuerpo\" id=\"div_cuerpo1\">\t\n");
      out.write("        <div class=\"panel panel-primary\">\n");
      out.write("             <div class=\"alert alert-info\">\n");
      out.write("                            <h4><strong><center>Lista de  Examenes de  Entrenammiento</center></strong></h4>                            \n");
      out.write("                        </div> \n");
      out.write("         \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("     <div class=\"col-md-12\">\n");
      out.write("     <div class=\"panel panel-info\">\n");
      out.write("     <div class=\"panel-body\">\n");
      out.write("      <div class=\"table-responsive\">         \n");
      out.write("    \n");
      out.write("     <table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"50%\">\n");
      out.write("        <thead>\n");
      out.write("       \n");
      out.write("                <tr  class=\"panel-info \">                    \n");
      out.write("                    <th>Nro</th>                    \n");
      out.write("                    <th>Examen Training</th>\n");
      out.write("                    <th>Accion</th>\n");
      out.write("                    <th>Estado</th>                                          \n");
      out.write("                </tr>\n");
      out.write("           \n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("             ");
  for (i=1;i<=4;i++)   {    
      out.write("\n");
      out.write("            \n");
      out.write("             <tr  >\n");
      out.write("                                     <td><center>");
      out.print(i);
      out.write("</center></td>                                                          \n");
      out.write("                                    <td>");
      out.print("Examen Training Nro :"+i);
      out.write("</td>                                   \n");
      out.write("                                       <td>\n");
      out.write("                                          <center>\n");
      out.write("                                                   <button   style=\"width:150px;\" onclick=\"\" >\n");
      out.write("                                                       <img  width=\"50px\"  height=\"50px\" src=\"");
      out.print(request.getContextPath());
      out.write("/imagenes/trainingrendir.png\"> \n");
      out.write("                                                       <br><b>Rendir Examen Training</b>\n");
      out.write("                                                   </button>\n");
      out.write("                                          </center>\n");
      out.write("                                        </td>\n");
      out.write("                                        <td><b>Habilitado</b></td>\n");
      out.write("                                    </tr>\n");
      out.write("           ");
    }
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("     </table>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("       </div>\n");
      out.write("           </div>\n");
      out.write("           </div>\n");
      out.write("           </div>\n");
      out.write("           </div>\n");
      out.write("      </div>\n");
      out.write("             </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("                           \n");
      out.write("               \n");
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
