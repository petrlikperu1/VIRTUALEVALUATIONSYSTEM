package org.apache.jsp.AplicacionExamen.RendirExamen.ExamenTraining;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import BEAN.*;
import java.util.ArrayList;

public final class FrmRendirExamen_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


AyudaBean   objAyudas=null;
ArrayList<DesarrolloExamenGeneradoBean>  listaDesarrolloExamenGeneradoBean    = null;
DesarrolloExamenGeneradoBean   objDesarrolloExamenGeneradoBean;
DetalleEstructuraExamenBean  objDetalleEstructuraExamenBean=null;
ArrayList<AyudaBean>  listaAyudas=null;
ArrayList<AlternativaBean>  listaAlternativa=null;
String contadorcad,enunciado;
int  contador;
String CODMATRICULA,CODDETAMATRICULA;
String  parametro="",limite,parametros="";
String  RESPUESTAOK;
String  CODDESARROLLOEXAMGENERADOCAD,NUMEXAMDESARROLLOGENERADOCAD;
double   penalidadayuda,penalidaderrorpregunta,puntajepregunta;


 ExamenAutoGeneradoBean  objExamenAutoGeneradoBean=null;




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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	
	listaDesarrolloExamenGeneradoBean =(ArrayList<DesarrolloExamenGeneradoBean> )session.getAttribute("listaDesarrolloExamenGenerado");
     
        listaAlternativa=(ArrayList<AlternativaBean>)request.getAttribute("Alternativa");
        listaAyudas=(ArrayList<AyudaBean>)request.getAttribute("Ayudas");
	contadorcad=session.getAttribute("contador").toString();      
        contador=Integer.parseInt(contadorcad);
        objDesarrolloExamenGeneradoBean=(DesarrolloExamenGeneradoBean)request.getAttribute("PREGUNTAS");
        enunciado=objDesarrolloExamenGeneradoBean.getENUNCIADOPREG();
        RESPUESTAOK=objDesarrolloExamenGeneradoBean.getRESPUESTAOK();
        limite =request.getAttribute("limite").toString();    



        objExamenAutoGeneradoBean=(ExamenAutoGeneradoBean)request.getAttribute("datosmatricula");  
        parametros="&CODMATRICULA="+objExamenAutoGeneradoBean.getCODMATRICULA()+"&CODDETAMATRI="+objExamenAutoGeneradoBean.getCODDETAMATRI()+"&CODMATERIA="+objExamenAutoGeneradoBean.getCODMATERIA()+"&CODESTRUCEXAMEN="+objExamenAutoGeneradoBean.getCODESTRUCEXAMEN(); 

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    \r\n");
      out.write("\t<title>RENDIR  EXAMEN</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body >\r\n");
      out.write("   \r\n");
      out.write("    \r\n");
      out.write("     <center> \r\n");
      out.write("         <table class=\"FondoTabla\"  width=\"100%\">\r\n");
      out.write("                                <tr class=\"tituloTabla\"    >\r\n");
      out.write("                                        <td>-- RENDIR EXAMEN --</td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("\t\t\t   </table>\r\n");
      out.write("\t\t\t  <table  width=\"90%\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t  <td>\t\r\n");
      out.write("\t\t\t\t\t<table width=\"100%\" >\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <td>                                                                                                      \r\n");
      out.write("                                                    <b> Tiempo Restante:</b>                                                   \r\n");
      out.write("                                                    <span id=\"minutos\"></span>:<span  id=\"segundos\"></span>\r\n");
      out.write("                                                </td>\r\n");
      out.write("                                                  \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                             <tr>\r\n");
      out.write("                                                <td>                                                                                                      \r\n");
      out.write("                                                    <b> Puntaje :</b>                                                   \r\n");
      out.write("                                                    <span >");
      out.print(puntajepregunta);
      out.write("</span></td>                                                  \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            <tr>\r\n");
      out.write("                                                <td></td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("                                        <br>\r\n");
      out.write("\t\t\t\t\t<table width=\"90%\" border=\"0\" height=\"50\">\r\n");
      out.write("                                            <td width=\"47%\" colspan=\"6\" bgcolor=\"#87CEEB\" >\r\n");
      out.write("                                                       <center>  \r\n");
      out.write("                                                        <div  style=\"height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \r\n");
      out.write("                                                            <b>  Pregunta</b>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        </center>\r\n");
      out.write("                                                    </td> \r\n");
      out.write("                                            <tr  bgcolor=\"#D5F7FF\" >\r\n");
      out.write("                                            <td width=\"3%\"><b><font size=\"4\">");
      out.print(contador);
      out.write(")</font></b></td>\r\n");
      out.write("                                                    <td width=\"50%\"  bgcolor=\"#D5F7FF\">\r\n");
      out.write("                                                        <div  style=\"background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;\">\r\n");
      out.write("                                                        ");
      out.print(enunciado);
      out.write("\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </td>\r\n");
      out.write("                                                    <td width=\"30%\" bgcolor=\"#ebebeb\">\r\n");
      out.write("                                                    <center>\r\n");
      out.write("                                                        <img src=\"");
      out.print(request.getContextPath());
      out.write("/imagenes/pregunta.png\" ></td>\r\n");
      out.write("                                                    </center>   \r\n");
      out.write("                                            </tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("              \r\n");
      out.write("                                        <table width=\"90%\" border=\"0\" height=\"10\">\r\n");
      out.write("                                            <tr   bgcolor=\"#D5F7FF\" >\r\n");
      out.write("                                                 \r\n");
      out.write("                                                    <td width=\"47%\" colspan=\"6\" bgcolor=\"#87CEEB\">\r\n");
      out.write("                                                       <center>  \r\n");
      out.write("                                                        <div  style=\"height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \r\n");
      out.write("                                                            <b>  Alternativas</b>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        </center>\r\n");
      out.write("                                                    </td>                                                   \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            \r\n");
      out.write("                                            ");
  
                                            
                                            for(AlternativaBean  objAlternativas:listaAlternativa){  
      out.write("\r\n");
      out.write("                                            <tr  bgcolor=\"#D5F7FF\" >\r\n");
      out.write("                                                   <td width=\"3%\" ></td>\r\n");
      out.write("                                                   <td width=\"4%\" bgcolor=\"#D5F7FF\">");
      out.print(objAlternativas.getCLAVEALTER());
      out.write("<b>)</b><input type=\"radio\" name=\"rdop\" id=\"rdop\" value=\"");
      out.print(objAlternativas.getCLAVEALTER());
      out.write("\"></td>\r\n");
      out.write("                                                    <td width=\"42%\"  bgcolor=\"#D5F7FF\">\r\n");
      out.write("                                                        <div  style=\"background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \r\n");
      out.write("                                                               ");
      out.print(objAlternativas.getENUNCIADOALTER());
      out.write("\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </td>\r\n");
      out.write("                                                    <td width=\"31%\" >\r\n");
      out.write("                                                         <center>\r\n");
      out.write("                                                        <div  style=\"background-color: #ebebeb;height:auto;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:#D5F7FF;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \r\n");
      out.write("                                                                .\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        </center>     \r\n");
      out.write("                                                    </td>\r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            \r\n");
      out.write("                                             ");
   }
      out.write("\r\n");
      out.write("                                           <tr  bgcolor=\"#D5F7FF\" >\r\n");
      out.write("                                                  <td width=\"3\" ></td>\r\n");
      out.write("                                                   <td width=\"3%\" bgcolor=\"#D5F7FF\"></td>                                                  \r\n");
      out.write("                                                     <td   bgcolor=\"#D5F7FF\">                                                         \r\n");
      out.write("                                                       \r\n");
      out.write("                                                     </td>\r\n");
      out.write("                                                                                                                                                                         \r\n");
      out.write("                                                     <td>\r\n");
      out.write("                                                      <center>                                                                   \r\n");
      out.write("                                                          <input type=\"button\"  class=\"boton\" value=\"SIGUIENTE PREGUNTA ======>\" onclick=\"siguientepreguntaalumno('");
      out.print(request.getContextPath());
      out.write("','ExamenAutoGenerado',4,'");
      out.print(limite);
      out.write("','");
      out.print(parametros);
      out.write("')\"  style=\"height:35px;width:300px;\"> \r\n");
      out.write("                                                      </center>\r\n");
      out.write("                                                     </td>\r\n");
      out.write("                                           </tr>\r\n");
      out.write("                                      </table>\r\n");
      out.write("                                               \r\n");
      out.write("                                         ");
   if(listaAyudas.size()>0) { 
      out.write("                  \r\n");
      out.write("                                      <table width=\"90%\"  height=\"30\">\r\n");
      out.write("                                          \r\n");
      out.write("                                          <tr>\r\n");
      out.write("                                                  \r\n");
      out.write("                                                    \r\n");
      out.write("                                                    <td width=\"47%\"  bgcolor=\"#87CEEB\" colspan=\"3\">\r\n");
      out.write("                                                        <center>  \r\n");
      out.write("                                                        <div  style=\"height:auto;FONT-FAMILY: Tahoma;FONT-SIZE: 10pt;COLOR: #000066;\">                                                        \r\n");
      out.write("                                                            <b>  Ayudas</b>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        </center>\r\n");
      out.write("                                                    </td>\r\n");
      out.write("                                                    \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                    ");
     }  
      out.write("      \r\n");
      out.write("                                          \r\n");
      out.write("                                           ");
  
                                             int   i1=1;
                                             
                                            for(AyudaBean  objAyudas:listaAyudas){ 
                                              parametro="&enunciado="+objAyudas.getENUNCIADOAYUDA();    
                                              
                                           
      out.write("\r\n");
      out.write("                                            <tr> \r\n");
      out.write("                                                    <td width=\"3%\" bgcolor=\"#D5F7FF\"><input type=\"button\"  style=\"width:140px;height: 50\" class=\"boton\" value=\"Ayuda # ");
      out.print(""+i1 );
      out.write(":\" id=\"");
      out.print("B"+i1);
      out.write("\" onclick=\"Ayuda('");
      out.print(request.getContextPath());
      out.write("','ExamenAutoGenerado',6,'");
      out.print(parametro);
      out.write("','ayuda");
      out.print("A"+i1);
      out.write("','");
      out.print("B"+i1);
      out.write("','");
      out.print(penalidadayuda);
      out.write("')\"  style=\"height:35px;width:30px;\"> </td>\r\n");
      out.write("                                                    <td width=\"47%\"  bgcolor=\"#D5F7FF\">\r\n");
      out.write("                                                        <div  id=\"ayuda");
      out.print("A"+i1);
      out.write("\"  style=\"visibility: visible;display:block;height:50px;FONT-FAMILY: Tahoma;BACKGROUND-COLOR:DarkGray;FONT-SIZE: 10pt;COLOR: black;\">           \r\n");
      out.write("                                                            \r\n");
      out.write("                                                        </div>                                                       \r\n");
      out.write("                                                    </td>                                                    \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                            <tr  bgcolor=\"white\" >\r\n");
      out.write("                                            <td colspan=\"2\" >.</td>                                                  \r\n");
      out.write("                                            </tr>\r\n");
      out.write("                                           ");
    i1++;  }
      out.write("                                    \r\n");
      out.write("                                      </table>\t\r\n");
      out.write("\t\t\t\t  </td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</center>\r\n");
      out.write("</body>\r\n");
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
