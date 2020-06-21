package org.apache.jsp.AplicacionExamen.ResultadoExamen;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FrmListarRegistroNotas_005f1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("                   <center>\n");
      out.write("                        <table width=\"100%\" border=\"0\" class=\"FondoTabla\">\n");
      out.write("                            <tr class=\"tituloTabla\">\n");
      out.write("                            <td>.........................  REGISTRO DE  NOTAS  ...............................</td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                      <br><br>\n");
      out.write("                       <table>\n");
      out.write("                           <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    <center>                                \n");
      out.write("                                    \n");
      out.write("                                                                         \n");
      out.write("                                    </center></td>  \n");
      out.write("                           </tr>\n");
      out.write("                       </table>\n");
      out.write("                            <table  width=\"55%\" heigth=\"100%\" class=\"FondoTabla\" >\n");
      out.write("                                \n");
      out.write("                                <tr  class=\"TITULOTABLA\">\n");
      out.write("                                    <td>Nro</td>\n");
      out.write("                                    <td>Examen</td>                                    \n");
      out.write("                                    <td>Nota</td>\n");
      out.write("                                    <td>Accion</td>\n");
      out.write("                                    </tr>                \n");
      out.write("                               \n");
      out.write("                                    ");
  for (int  i=1;i<5;i++)
                                    {  
                                    
      out.write("\n");
      out.write("                                    <tr ");
 if(i%2==0){  
      out.write("  class=\"fila_impar\"  ");
}else{ 
      out.write("  class=\"fila_par\"   ");
}
      out.write(" >\n");
      out.write("                                     <td><center>");
      out.print(i);
      out.write("</center></td>          \n");
      out.write("                                    <td>");
      out.print("xxxxxxxxxxxxxxx");
      out.write("</td>                             \n");
      out.write("                                    <td><center><b>18</b></center></td>\n");
      out.write("                                   \n");
      out.write("                                   \n");
      out.write("                                    <td><center>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                         <button   style=\"width:150px;\" onclick=\"\"\n");
      out.write("                                                   \n");
      out.write("                                                \n");
      out.write("                                                     disabled=\"false\"\n");
      out.write("                                            \n");
      out.write("                                                   >\n");
      out.write("                                                   <img  width=\"50px\"  height=\"50px\" src=\"");
      out.print(request.getContextPath());
      out.write("/imagenes/solucionario.png\"> \n");
      out.write("                                                   <br><b>Ver Solucionario</b>\n");
      out.write("                                          </button>            \n");
      out.write("                                        \n");
      out.write("                                         </center></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
    i++; }
      out.write("\n");
      out.write("                                \n");
      out.write("                            </table>\n");
      out.write("                     <button   style=\"width:150px;\" onclick=\"\" >\n");
      out.write("                                                                         <img  width=\"40px\"  height=\"40px\" src=\"");
      out.print(request.getContextPath());
      out.write("/imagenes/retroceder.png\"> Regresar\n");
      out.write("                                                                        </button>  \n");
      out.write("                    </center>\n");
      out.write("           \n");
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
