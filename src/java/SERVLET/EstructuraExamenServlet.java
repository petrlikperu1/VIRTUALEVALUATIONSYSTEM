package SERVLET;

import BEAN.DetalleEstructuraExamenBean;
import BEAN.EstructuraExamenBean;
import BEAN.NivelDificultadBean;
import BEAN.PreguntaBean;
import BEAN.TemaBean;
import DAO.CarreraProfesionalDAO;
import DAO.DetalleEstructuraExamenDAO;
import DAO.EstructuraExamenDAO;
import DAO.MateriaDAO;
import DAO.NivelDificultadDAO;
import DAO.PreguntaDAO;
import DAO.SemestreDAO;
import DAO.TemaDAO;
import DAO.TipoExamenDAO;
import DAO.UnidadTematicaDAO;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EstructuraExamenServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             HttpSession session;
             session = request.getSession();
             response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out = response.getWriter();                   
                     if(session.getAttribute("SESION")==null){
                                     out.println("1"); 
                     }else{
                             String  opcad=request.getParameter("op");
                             int     op=Integer.parseInt(opcad);  
            switch(op){
                case 1 :{
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmEstructuraExamen.jsp").forward(request, response);
                    break;
                }  
                case 2 :{
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/FrmMenuOrganizacionExamen.jsp").forward(request, response);
                    break;
                }
                case 3 :{
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
                    int  codigo=objPreguntaDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);

                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    SemestreDAO  objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);

                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamen",listaTipoExamen);


                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);

                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmEstructuraExamenRegistrar.jsp").forward(request, response);
                    break;
                }
                case 4: {
                    EstructuraExamenBean vl_EstructuraExamenBean = new Gson().fromJson(request.getParameter("EstructuraExamenBean"), EstructuraExamenBean.class);
                    java.lang.reflect.Type ListaDetalleEstructuraExamenType = new TypeToken<Collection<DetalleEstructuraExamenBean>>(){}.getType();
                    Collection<DetalleEstructuraExamenBean> ListaDetalleEstructuraExamen = new Gson().fromJson(request.getParameter("ListaDetalleEstructuraExamen"), ListaDetalleEstructuraExamenType);
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                    int estado= objEstructuraExamenDAO.InsertarEstructuraExamen(vl_EstructuraExamenBean);
                    if (estado == 1) {
                        objEstructuraExamenDAO.InsertarDetalleEstructuraExamen(ListaDetalleEstructuraExamen,vl_EstructuraExamenBean);
                    }
                          
                    int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                   
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamenBean=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamenBean",listaTipoExamenBean);
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmTablaEstructuraExamen.jsp").forward(request, response);
                    break;

                }
                case 5 :{
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmEstructuraExamen.jsp").forward(request, response);
                    break;
                }
                case 6 :{
                    String  codcad=request.getParameter("CODPREG");
                    int   codigo=Integer.parseInt(codcad);
                    String codCarr=request.getParameter("CODCAR");
                    int codigoCarrera=Integer.parseInt(codCarr);
                    String codMat=request.getParameter("CODMAT");
                    int codigoMateria=Integer.parseInt(codMat);
                    String codUni=request.getParameter("CODUNI");
                    int codigoUnidad=Integer.parseInt(codUni);
                    String codTem=request.getParameter("CODTEM");
                    int codigoTema=Integer.parseInt(codTem);
                    String codNiv=request.getParameter("CODNIV");
                    int codigoNivel=Integer.parseInt(codNiv);
                    String  pregunta=request.getParameter("EnunPreg");
                    String  alternativa=request.getParameter("EnunAlter");   
                    PreguntaBean    objPreguntaBean=new PreguntaBean();
                                    objPreguntaBean.setCODPREG(codigo);
                                    objPreguntaBean.setCODCARRERA(codigoCarrera);
                                    objPreguntaBean.setCODMATERIA(codigoMateria);
                                    objPreguntaBean.setCODUNIDTEMA(codigoUnidad); 
                                    objPreguntaBean.setCODTEMA(codigoTema);
                                    objPreguntaBean.setCODNIVEL(codigoNivel);
                                    objPreguntaBean.setENUNCIADOPREG(pregunta);
                                    objPreguntaBean.setENUNCIADOALTER(alternativa);

                    request.setAttribute("datos",objPreguntaBean);

                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    ArrayList  listaMateria=objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria",listaMateria);

                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematica();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);

                    TemaDAO  objTemaDAO=new TemaDAO();
                    ArrayList  listaTema=objTemaDAO.ListarTema();
                    request.setAttribute("listaTema",listaTema);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamenBean=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamenBean",listaTipoExamenBean);
                    
                    getServletContext().getRequestDispatcher("/Mantenimiento/Materia/FrmMateriaModificarMant.jsp").forward(request, response);
                    break;
                }
                case 7 :{
                    
                    EstructuraExamenBean vl_EstructuraExamenBean = new Gson().fromJson(request.getParameter("EstructuraExamenBean"), EstructuraExamenBean.class);
                    
                    java.lang.reflect.Type ListaDetalleEstructuraExamenType = 
                            new TypeToken<Collection<DetalleEstructuraExamenBean>>() {}.getType();
                    
                    Collection<DetalleEstructuraExamenBean> ListaDetalleEstructuraExamen = new Gson().fromJson(request.getParameter("ListaDetalleEstructuraExamen"), ListaDetalleEstructuraExamenType);
                    
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    
                    int estado = objEstructuraExamenDAO.ModificarEstructuraExamen(vl_EstructuraExamenBean);
                    
                    if (estado == 1) {
                        objEstructuraExamenDAO.InsertarDetalleEstructuraExamen(ListaDetalleEstructuraExamen, vl_EstructuraExamenBean);
                    }


                    String mensaje="";
                   /* String  codcad=request.getParameter("hddcodigo");
                    int   codigo=Integer.parseInt(codcad);
                    String codCarr=request.getParameter("Carrera");
                    int codigoCarrera=Integer.parseInt(codCarr);
                    String codMat=request.getParameter("Materia");
                    int codigoMateria=Integer.parseInt(codMat);
                    String codUni=request.getParameter("Unidad");
                    int codigoUnidad=Integer.parseInt(codUni);
                    String codTem=request.getParameter("Tema");
                    int codigoTema=Integer.parseInt(codTem);
                    String codNiv=request.getParameter("Nivel");
                    int codigoNivel=Integer.parseInt(codNiv);
                    String  pregunta=request.getParameter("EnunPreg");
                    String  alternativa=request.getParameter("EnunAlter");   
                    PreguntaBean    objPreguntaBean=new PreguntaBean();
                                    objPreguntaBean.setCODPREG(codigo);
                                    objPreguntaBean.setCODCARRERA(codigoCarrera);
                                    objPreguntaBean.setCODMATERIA(codigoMateria);
                                    objPreguntaBean.setCODUNIDTEMA(codigoUnidad); 
                                    objPreguntaBean.setCODTEMA(codigoTema);
                                    objPreguntaBean.setCODNIVEL(codigoNivel);
                                    objPreguntaBean.setENUNCIADOPREG(pregunta);
                                    objPreguntaBean.setENUNCIADOALTER(alternativa);
                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();            
                    int estado= objPreguntaDAO.ModificarPregunta(objPreguntaBean);*/
                    if(estado==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";

                    request.setAttribute("mensaje",mensaje); 
                  /*  request.setAttribute("datos",objPreguntaBean);   

                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    MateriaDAO  objMateriaDAO=new MateriaDAO();
                    ArrayList  listaMateria=objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria",listaMateria);

                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematica();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);

                    TemaDAO  objTemaDAO=new TemaDAO();
                    ArrayList  listaTema=objTemaDAO.ListarTema();
                    request.setAttribute("listaTema",listaTema);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);

                    getServletContext().getRequestDispatcher("/OrganizacionExamen/Pregunta/FrmRegistrarPreguntaxMateriaModificar.jsp").forward(request, response);
                    */
                    int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                    
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamenBean=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamenBean",listaTipoExamenBean);
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmEstructuraExamen.jsp").forward(request, response);
                    
                    break;
                }   
                case 8 :{   
                    
                    String codestructura=request.getParameter("CODESTRUCEXAMEN");         
                    int codigoEstructura=Integer.parseInt(codestructura);        
                    EstructuraExamenBean  objEstructuraExamenBean=new EstructuraExamenBean();
                    objEstructuraExamenBean.setCODESTRUCEXAMEN(codigoEstructura);
                    
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();              
                    objEstructuraExamenDAO.EliminarCebaceraEstructuraExamen(objEstructuraExamenBean);
                    objEstructuraExamenDAO.EliminarDetalleEstructuraExamen(objEstructuraExamenBean);
                    
                    out.println("<script>");
                    out.println("jAlert(\"Registro Eliminado Satisfactoriamente !!!\", 'Validacion');");
                    out.println("</script>");
                     
                    int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                    
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamenBean=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamenBean",listaTipoExamenBean);
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/FrmEstructuraExamen.jsp").forward(request, response);
                 
//                    String  codcad=request.getParameter("CODPREG");
//                    int   codigo=Integer.parseInt(codcad);
//                    String codCarr=request.getParameter("CODCAR");
//                    int codigoCarrera=Integer.parseInt(codCarr);
//                    String codMat=request.getParameter("CODMAT");
//                    int codigoMateria=Integer.parseInt(codMat);
//                    String codUni=request.getParameter("CODUNI");
//                    int codigoUnidad=Integer.parseInt(codUni);
//                    String codTem=request.getParameter("CODTEM");
//                    int codigoTema=Integer.parseInt(codTem);
//                    String codNiv=request.getParameter("CODNIV");
//                    int codigoNivel=Integer.parseInt(codNiv);
//
//
//                    PreguntaBean    objPreguntaBean=new PreguntaBean();
//                                    objPreguntaBean.setCODPREG(codigo);
//                                    objPreguntaBean.setCODCARRERA(codigoCarrera);
//                                    objPreguntaBean.setCODMATERIA(codigoMateria);
//                                    objPreguntaBean.setCODUNIDTEMA(codigoUnidad); 
//                                    objPreguntaBean.setCODTEMA(codigoTema);
//                                    objPreguntaBean.setCODNIVEL(codigoNivel);
//
//                    PreguntaDAO  objPreguntaDAO=new PreguntaDAO();
//                    objPreguntaDAO.EliminarPregunta(codigo);
//
//                    ArrayList<PreguntaBean> listaPregunta= objPreguntaDAO.ListarPregunta();
//                    request.setAttribute("listaPregunta",listaPregunta);
//
//                    getServletContext().getRequestDispatcher("/OrganizacionExamen/Pregunta/FrmRegistrarPreguntaxMateria.jsp").forward(request, response);
                    break;
                }
                case 10:{
                    HttpSession sesion = request.getSession();
                    ArrayList<DetalleEstructuraExamenBean> lista = new ArrayList<DetalleEstructuraExamenBean>();
                    lista = (ArrayList<DetalleEstructuraExamenBean>)sesion.getAttribute("PREGUNTAS");

                    String cantidadcad = request.getParameter("CANT");
                    int cantidad = Integer.parseInt(cantidadcad);
                    String codnivelcad = request.getParameter("CODNIVEL");
                    int codnivel = Integer.parseInt(codnivelcad);

                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    String nivel = objEstructuraExamenDAO.obtenerNombNivel(codnivel);

                    DetalleEstructuraExamenBean objDetalle = new DetalleEstructuraExamenBean();
                    objDetalle.setCANTPREG(cantidad);
                    objDetalle.setCODNIVEL(codnivel);
                    objDetalle.setNOMBNIVEL(nivel);

                    lista.add(objDetalle);
                    sesion.setAttribute("PREGUNTAS", lista);

                    PrintWriter out1 = response.getWriter();
                    int i=1;
                    int suma=0;
                    out1.println("<table border='1' class='FondoTabla'>");
                    for(DetalleEstructuraExamenBean obj:lista){
                        suma = suma + obj.getCANTPREG();
                        out1.println("<input type='hidden' name='hddPregunta' value='1'>");
                        out1.println("<tr>");   
                        out1.println("<td width='50'>"+i+"</td>");
                        out1.println("<td width='200'>"+obj.getNOMBNIVEL() +"</td>");
                        out1.println("<td width='200'>"+obj.getCANTPREG() +"</td>");
                        out1.println("<td width='100'>-</td>");
                        out1.println("</td>");
                        out1.println("</tr>");
                        i++;
                    }
                    out1.println("<tr>");
                    out1.println("<td colspan=2 class='text_normal'>TOTAL DE PREGUNTAS DEL EXAMEN</td>");
                    out1.println("<td class=\"text_normal\">"+suma+"</td>");
                    out1.println("<td>-</td>");
                    out1.println("</tr>");
                    out1.println("</table>");
                }
                 case 11:{  
                    
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                     int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.MostrarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                   
                    
                     TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                     ArrayList  listaTipoExamen=objTipoExamenDAO.MostrarTipoExamen();
                     request.setAttribute("listaTipoExamen",listaTipoExamen);
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenSupervisado/FrmEstructuraExamenSupervisado.jsp").forward(request, response); 
                    break;}
            
                case   12:
                {
                    String codsemestrecad = request.getParameter("CODSEMESTRE");             
                    String codcarreracad = request.getParameter("CODCARRERA");
                    String codmateriacad = request.getParameter("CODMATERIA");
                    PrintWriter out12 = response.getWriter();
                   if(codsemestrecad==null) codsemestrecad="0";
                   if(codcarreracad==null) codcarreracad="0";
                   if(codmateriacad==null) codmateriacad="0";
                    
                   
                 
                   int codsemestre = Integer.parseInt(codsemestrecad);
                   int codcarrera = Integer.parseInt(codcarreracad); 
                   int codmateria = Integer.parseInt(codmateriacad); 
                    EstructuraExamenBean objEstructuraExamenBean=new EstructuraExamenBean();
                                         objEstructuraExamenBean.setCODSEMESTRE(codsemestre);
                                         objEstructuraExamenBean.setCODCARRERA(codcarrera);
                                         objEstructuraExamenBean.setCODMATERIA(codmateria);
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                    ArrayList<EstructuraExamenBean>  listaEstructuraExamen=objEstructuraExamenDAO.BuscarEstructuraExamen(objEstructuraExamenBean);
                 
                    out12.print("<div class=\"row\">");
                    out12.print("<div class=\"col-md-12\">");
                    out12.print("<div class=\"panel panel-info\">");
                    out12.print("<div class=\"panel-body\">");
                    out12.print("<div class=\"table-responsive\">");
                    out12.print("<table id=\"example\" class=\"table table-striped table-bordered dt-responsive nowrap table-hover\" cellspacing=\"0\" width=\"100%\">");
                    out12.print("<thead>");
                    out12.print("<tr  class=\"panel-info\">");
                    out12.print("<th>Materia</th>");
                    out12.print("<th>Tipo Examen</th>");
                    out12.print("<th>Semestre</th>");
                    out12.print("<th>Carrera</th>");
                    out12.print("<th>Estado</th>");
                    out12.print("<th>Modificar</th>");
                    out12.print("<th>Dar Baja</th>");
                    out12.print("</tr>");
                    out12.print("</thead>");
                    out12.print("<tbody>");
                         for (EstructuraExamenBean obj :listaEstructuraExamen) {
                    out12.print("<tr>");
                    out12.print("<td>"+obj.getNOMBMATERIA()+"</td>");
                    out12.print("<td>"+obj.getNOMBTIPEXAMEN()+"</td>");
                    out12.print("<td>"+obj.getNOMBSEMESTRE()+"</td>");
                    out12.print("<td>"+obj.getNOMBCARRERA()+"</td>");
                    
                     if(obj.getESTADO().equals("A")){ 
                       out12.print("<td>HABILITADO</td>");
                     }else{
                       out12.print("<td>DESAHABILITADO</td>");
                     } 
                    out12.print("</td>");                  
                    out12.print("<td>");
                    out12.print("<center>");
                    out12.print("<button type=\"button\"  class=\"btn btn-primary\"  onclick=\"cargarEstructuraExamen('"+request.getContextPath()+"','"+obj.getCODESTRUCEXAMEN()+"','"+obj.getCODSEMESTRE()+"','"+obj.getCODCARRERA()+"','"+obj.getCODMATERIA()+"','"+obj.getCODUNIDAD()+"','"+obj.getCODTEMA()+"','"+obj.getCODTIPEXAMEN()+"')\">");
                    out12.print("<img src=\""+request.getContextPath()+"/imagenes/modificar.png\" width=\"20\" height=\"20\">Modificar");
                    out12.print("</button>");
                    out12.print("</center>");
                    out12.print("</td>");
                    out12.print("<td>");
                    out12.print("<center>");
                    out12.print("<button type=\"button\"  class=\"btn btn-primary\"   onclick=\"eliminarEstructuraExamen('"+request.getContextPath()+"',16,'"+obj.getCODESTRUCEXAMEN()+"')\"  >");
                    out12.print("<img src=\""+request.getContextPath()+"/imagenes/eliminar.png\" width=\"20\" height=\"20\">Eliminar");
                    out12.print("</button>");
                    out12.print("</center>");
                    out12.print("</td>");
                    out12.print("</tr>");
                    }
                    out12.print("</tbody>");
                    out12.print("</table>");
                    out12.print("</div>");
                    out12.print("</div>");
                    out12.print("</div>");
                    out12.print("</div>");
                    out12.print("</div>");
                   
                   // getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenSupervisado/FrmTablaEstructuraExamenSupervisado.jsp").forward(request, response); 
                                        
                    break;
                }
                case 13: {
                    String value = "";
                    String s_codigo = request.getParameter("CODIGO");
                    int codigo = Integer.parseInt(s_codigo);
                    PrintWriter out13 = response.getWriter();
                    out13.println("<table align='center' width='55%' border='0' class='FondoTabla'>");
                    out13.println("<tr class='tituloTabla'>");
                    out13.println("<td align='center'>Tema </td>");
                    out13.println("<td align='center'>Nivel Dificultad </td>");
                    out13.println("<td align='center'>Cantidad Preg</td>");
                    out13.println("<td align='center'>Puntaje x Preg</td>");
                    out13.println("<td align='center'>Penalidad x Pregunta Errada </td>");
                    out13.println("<td align='center'>Penalidad x Utilizar Ayudas </td>");
                    out13.println("<td align='center'>&nbsp; </td>");
                    out13.println("</tr>");
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    EstructuraExamenBean OBJEstructuraExamenBean = objEstructuraExamenDAO.BuscarEstructuraExamen(codigo);

                    TemaBean objTemaBean = new TemaBean();
                    objTemaBean.setCODCARRERA(OBJEstructuraExamenBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(OBJEstructuraExamenBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(OBJEstructuraExamenBean.getCODUNIDAD());
                    TemaDAO objTemaDAO = new TemaDAO();
                    ArrayList<TemaBean> listatema = objTemaDAO.FiltrarTema(objTemaBean);
                    out13.println("<tr >");
                    out13.println("<td>");
                    out13.println("<div id='divtema'>");
                    out13.println("<select name='cbotema' id='cbotema'>");
                    out13.println("<option value='0'>----------------------</option>");
                    for(TemaBean obj: listatema){
                        out13.println("<option value='" + obj.getCODTEMA() + "' >" + obj.getNOMBTEMA() + "</option>");
                    };
                    out13.println("</select>");
                    out13.println("</td>");
                    out13.println("<td align='center'>");
                    out13.println("<select name='cbonivel' id='cbonivel' class='input_text' onchange='colorfoco(this.value);'>");
                    out13.println("<option value='0'>--------</option>");
                    NivelDificultadDAO objNivelDificultadDAO = new NivelDificultadDAO();
                    ArrayList<NivelDificultadBean> listaNivelDificultad = objNivelDificultadDAO.ListarNivelDificultad();
                    for (NivelDificultadBean obj : listaNivelDificultad) {
                        value = obj.getCODNIVEL() + "-" + obj.getNOMBNIVEL();
                        out13.println("<option value='" + value + "'>" + obj.getNOMBNIVEL() + "</option>");
                    }
                    out13.println("</select>");
                    out13.println("</td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtcantpreg' id='txtcantpreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtpuntajepreg' id='txtpuntajepreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtpenalidadpreg' id='txtpenalidadpreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><div id='divpenalidad' style='visibility:visible;display:visible;' >");
                    out13.println("<input type='text' class='input_text' size='10' onkeypress='return soloNumeros(event)' name='txtpenalidadayudas' id='txtpenalidadayudas' class='tituloTabla'>");
                    out13.println("</div>");
                    out13.println("</td>");
                    out13.println("<td align='center'>");
                    out13.println("<input type='button' class='boton' value='Agregar' style='height:29px;width:105px;' onclick='agregarItemMarcoLogico(\"divMarcoLogico\");'>");
                    out13.println("</td>");
                    out13.println("</tr>");
                    out13.println("<tr>");
                    out13.println("<td colspan='10'>");
                    out13.println("<hr>");
                    out13.println("</td>");
                    out13.println("</tr>");
                    DetalleEstructuraExamenDAO objDetalleEstructuraExamenDAO = new DetalleEstructuraExamenDAO();
                    ArrayList<DetalleEstructuraExamenBean> listaDetalle = objDetalleEstructuraExamenDAO.listarDetalleEstructuraExamen(codigo);
                    int num = 0;
                    for (DetalleEstructuraExamenBean obj : listaDetalle) {
                        out13.println("<tr id='z" + num + "'>");
                        out13.println("<input   type='hidden'  value='" + obj.getCODTEMA() + "' name='codTema'>");
                        out13.println("<td  align='center'  class='tituloFormulario'>");
                        out13.println("<input   type='text' class='input_text'  size='10' name='tema' id='tema" + num + "' readonly  value='" + obj.getNOMBTEMA()+ "' >");
                        out13.println("</td>");
                        out13.println("<input type='hidden' value='" + obj.getCODNIVEL() + "' name='codnivel' />");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' name='nivel' id='nivel" + num + "' size='10'  value='" + obj.getNOMBNIVEL() + "'/>");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' name='txtcantpreg1' id='txtcantpreg" + num + "'  value='" + obj.getCANTPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' name='txtpuntajepreg1' id='txtpuntajepreg" + num + "'  value='" + obj.getPUNTAJEXPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' id='txtpenalidadpreg" + num + "' name='txtpenalidadpreg1'  value='" + obj.getPENALIDADXPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' id='txtpenalidadayudas" + num + "' name='txtpenalidadayudas1'  value='" + obj.getPENALIDADAYUDA() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center'>");
                        out13.println("<a href='javascript:retirarItem(\"z" + num + "\",\"actObjetivo" + num + "\",\"" + obj.getCANTPREG() + "\",\"" + obj.getPUNTAJEXPREG() + "\");' title='Eliminar Fila'><img src='images/tacho.gif' border='0' /></a>");
                        out13.println("</td>");
                        out13.println("</tr>");
                        num++;
                    }
                    out13.println("</table>");
                    break;
                }
                case 14:{
                    String s_codigo=request.getParameter("CODIGO");
                    int   codigo=Integer.parseInt(s_codigo);
                    PrintWriter out14 = response.getWriter();
                    DetalleEstructuraExamenDAO objDetalleEstructuraExamenDAO=new DetalleEstructuraExamenDAO();
                    ArrayList<DetalleEstructuraExamenBean> listaDetalle = objDetalleEstructuraExamenDAO.listarDetalleEstructuraExamen(codigo);
                    int totalpregunta = 0;
                    double totalpuntaje = 0;
                    for(DetalleEstructuraExamenBean obj:listaDetalle){
                        totalpregunta = totalpregunta + obj.getCANTPREG();
                        totalpuntaje = totalpuntaje + obj.getPUNTAJEXPREG()*obj.getCANTPREG();
                    }
                    out14.println("<table height=\"2%\" width=\"55%\" border=\"0\" class=\"FondoTabla\">");
                    out14.println("<tr class=\"tituloTabla\"><td colspan=\"10\">. </td></tr><tr class=\"tituloFormulario\">");
                    out14.println("<td>Total Preguntas</td><td><input type=\"text\" class=\"input_text\" size=\"10\" name=\"txttotal\" id=\"txttotal\" value=\""+totalpregunta+"\"></td>");
                    out14.println("<td>Puntaje Total </td><td><input type=\"text\" class=\"input_text\" size=\"10\" name=\"txttotal\" id=\"txtpuntajetotal\" value=\""+totalpuntaje+"\"></td>");
                    out14.println("<td width=\"50%\" >&nbsp;</td></tr></table>");
                    break;
                }
                case 15:{
                    EstructuraExamenBean vl_EstructuraExamenBean = new Gson().fromJson(request.getParameter("objEstructuraExamenBean"), EstructuraExamenBean.class);
                    
                    PrintWriter out15 = response.getWriter();
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    ArrayList<EstructuraExamenBean> listaEstructuraExamen = objEstructuraExamenDAO.BuscarEstructuraExamen(vl_EstructuraExamenBean);
                    //out15.println("<tbody>");
                    out15.println("<table id='listado' class='display' cellspacing='0' cellpadding='0' width='100%'>");
                    out15.println("<thead>");
                    out15.println("<tr>");
                    out15.println("<th>Codigo Estructura</th>");
                    out15.println("<th>Semestre</th>");
                    out15.println("<th>Carrera</th>");
                    out15.println("<th>Materia</th>");
                    out15.println("<th>Tipo Examen</th>");
                    out15.println("<th>Tiempo Minutos</th>");
                    out15.println("<th>Estado</th>");
                    out15.println("<th>Seleccionar</th>");
                    out15.println("</tr>");
                    out15.println("</thead>");
                    out15.println("<tfoot>");
                    out15.println("<tr>");
                    out15.println("<th>Codigo Estructura</th>");
                    out15.println("<th>Semestre</th>");
                    out15.println("<th>Carrera</th>");
                    out15.println("<th>Materia</th>");
                    out15.println("<th>Tipo Examen</th>");
                    out15.println("<th>Tiempo Minutos</th>");
                    out15.println("<th>Estado</th>");
                    out15.println("<th>Seleccionar</th>");
                    out15.println("</tr>");
                    out15.println("</tfoot>");
                    out15.println("<tbody>");
                    for (EstructuraExamenBean obj : listaEstructuraExamen) {
                        out15.println("<tr>");
                        out15.println("<td>" + obj.getCODESTRUCEXAMEN() + "</td>");
                        out15.println("<td>" + obj.getNOMBSEMESTRE() + "</td>");
                        out15.println("<td>" + obj.getNOMBCARRERA() + "</td>");
                        out15.println("<td>" + obj.getNOMBMATERIA() + "</td>");
                        out15.println("<td>" + obj.getNOMBTIPEXAMEN() + "</td>");
                        out15.println("<td>" + obj.getTiempoMinutos()+ "</td>");
                        out15.println("<td>" + obj.getESTADO() + "</td>");
                        out15.println("<td>");
                        out15.println("<center>");
                        out15.println("<button type='button' onclick=\"ProgramarExamen('" + request.getContextPath() + "', '" + obj.getCODESTRUCEXAMEN() + "',"
                                + "'" + obj.getCODSEMESTRE() + "', '" + obj.getCODCARRERA() + "',"
                                + "'" + obj.getCODMATERIA() + "', '" + obj.getCODUNIDAD() + "',"
                                + "'" + obj.getCODTEMA() + "', '" + obj.getCODTIPEXAMEN() + "','"+obj.getESTADO()+"','"+obj.getTiempoMinutos()+"')\">");
                        out15.println("<img src='" + request.getContextPath() + "//imagenes//horariolab.png' width='20' height='20'>");
                        
                        if(obj.getESTADO().equalsIgnoreCase("P")){
                            out15.println("Seleccionar");
                        }else{
                            out15.println("Seleccionar");
                        }
                        out15.println("</button>");
                        out15.println("</center>");
                        out15.println("</td>");
                        out15.println("</tr>");
                    }
                    out15.println("</tbody>");
                    out15.println("</table>");
                    out15.println("</div>");
                    out15.println("</div>");
                    //out15.println("</tbody>");
                }
                case 16 :
                {
                    
                    String CODESTRUCT=new String(request.getParameter("codestruct").getBytes("ISO-8859-1"), "UTF-8");
                    
                    EstructuraExamenBean   objEstructuraBean=new EstructuraExamenBean();
                                           objEstructuraBean.setCODESTRUCEXAMEN(Integer.parseInt(CODESTRUCT));
                                           
                    
                     EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                     
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    objEstructuraExamenDAO.EliminarCebaceraEstructuraExamen(objEstructuraBean);
                    objEstructuraExamenDAO.EliminarDetalleEstructuraExamen(objEstructuraBean);
                    int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                   
                    
                     TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                     ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                     request.setAttribute("listaTipoExamen",listaTipoExamen);
                     
                     
                     
                     
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenSupervisado/FrmEstructuraExamenSupervisado.jsp").forward(request, response); 
                    
                }
                
     // --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
               case 17:{  
                    
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                     int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.MostrarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                   
                    
                    
                      TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                     ArrayList  listaTipoExamen=objTipoExamenDAO.MostrarTipoExamen();
                     request.setAttribute("listaTipoExamen",listaTipoExamen);
                    
                    
                    
                    
                     request.setAttribute("listaTipoExamen",listaTipoExamen);
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenTraining/FrmEstructuraExamenTraining.jsp").forward(request, response); 
                    break;}
            
                case   18:
                {
                    String codsemestrecad = request.getParameter("CODSEMESTRE");             
                    String codcarreracad = request.getParameter("CODCARRERA");
                    String codmateriacad = request.getParameter("CODMATERIA");
                   if(codsemestrecad==null) codsemestrecad="0";
                   if(codcarreracad==null) codcarreracad="0";
                   if(codmateriacad==null) codmateriacad="0";
                    
                   
                 
                   int codsemestre = Integer.parseInt(codsemestrecad);
                   int codcarrera = Integer.parseInt(codcarreracad); 
                   int codmateria = Integer.parseInt(codmateriacad); 
                    EstructuraExamenBean objEstructuraExamenBean=new EstructuraExamenBean();
                                         objEstructuraExamenBean.setCODSEMESTRE(codsemestre);
                                         objEstructuraExamenBean.setCODCARRERA(codcarrera);
                                         objEstructuraExamenBean.setCODMATERIA(codmateria);
                    EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.BuscarEstructuraExamen(objEstructuraExamenBean);
                       
                    
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                     getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenTraining/FrmTablaEstructuraExamenTraining.jsp").forward(request, response); 
                                        
                    break;
                }
                case 19: {
                    String value = "";
                    String s_codigo = request.getParameter("CODIGO");
                    int codigo = Integer.parseInt(s_codigo);
                    PrintWriter out13 = response.getWriter();
                    out13.println("<table align='center' width='55%' border='0' class='FondoTabla'>");
                    out13.println("<tr class='tituloTabla'>");
                    out13.println("<td align='center'>Tema </td>");
                    out13.println("<td align='center'>Nivel Dificultad </td>");
                    out13.println("<td align='center'>Cantidad Preg</td>");
                    out13.println("<td align='center'>Puntaje x Preg</td>");
                    out13.println("<td align='center'>Penalidad x Pregunta Errada </td>");
                    out13.println("<td align='center'>Penalidad x Utilizar Ayudas </td>");
                    out13.println("<td align='center'>&nbsp; </td>");
                    out13.println("</tr>");
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    EstructuraExamenBean OBJEstructuraExamenBean = objEstructuraExamenDAO.BuscarEstructuraExamen(codigo);

                    TemaBean objTemaBean = new TemaBean();
                    objTemaBean.setCODCARRERA(OBJEstructuraExamenBean.getCODCARRERA());
                    objTemaBean.setCODMATERIA(OBJEstructuraExamenBean.getCODMATERIA());
                    objTemaBean.setCODUNIDTEMA(OBJEstructuraExamenBean.getCODUNIDAD());
                    TemaDAO objTemaDAO = new TemaDAO();
                    ArrayList<TemaBean> listatema = objTemaDAO.FiltrarTema(objTemaBean);
                    out13.println("<tr >");
                    out13.println("<td>");
                    out13.println("<div id='divtema'>");
                    out13.println("<select name='cbotema' id='cbotema'>");
                    out13.println("<option value='0'>----------------------</option>");
                    for(TemaBean obj: listatema){
                        out13.println("<option value='" + obj.getCODTEMA() + "' >" + obj.getNOMBTEMA() + "</option>");
                    };
                    out13.println("</select>");
                    out13.println("</td>");
                    out13.println("<td align='center'>");
                    out13.println("<select name='cbonivel' id='cbonivel' class='input_text' onchange='colorfoco(this.value);'>");
                    out13.println("<option value='0'>--------</option>");
                    NivelDificultadDAO objNivelDificultadDAO = new NivelDificultadDAO();
                    ArrayList<NivelDificultadBean> listaNivelDificultad = objNivelDificultadDAO.ListarNivelDificultad();
                    for (NivelDificultadBean obj : listaNivelDificultad) {
                        value = obj.getCODNIVEL() + "-" + obj.getNOMBNIVEL();
                        out13.println("<option value='" + value + "'>" + obj.getNOMBNIVEL() + "</option>");
                    }
                    out13.println("</select>");
                    out13.println("</td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtcantpreg' id='txtcantpreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtpuntajepreg' id='txtpuntajepreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><input type='text' class='input_text' size='10' name='txtpenalidadpreg' id='txtpenalidadpreg' onkeypress='return soloNumeros(event)' class='tituloTabla'></td>");
                    out13.println("<td align='center'><div id='divpenalidad' style='visibility:visible;display:visible;' >");
                    out13.println("<input type='text' class='input_text' size='10' onkeypress='return soloNumeros(event)' name='txtpenalidadayudas' id='txtpenalidadayudas' class='tituloTabla'>");
                    out13.println("</div>");
                    out13.println("</td>");
                    out13.println("<td align='center'>");
                    out13.println("<input type='button' class='boton' value='Agregar' style='height:29px;width:105px;' onclick='agregarItemMarcoLogico(\"divMarcoLogico\");'>");
                    out13.println("</td>");
                    out13.println("</tr>");
                    out13.println("<tr>");
                    out13.println("<td colspan='10'>");
                    out13.println("<hr>");
                    out13.println("</td>");
                    out13.println("</tr>");
                    DetalleEstructuraExamenDAO objDetalleEstructuraExamenDAO = new DetalleEstructuraExamenDAO();
                    ArrayList<DetalleEstructuraExamenBean> listaDetalle = objDetalleEstructuraExamenDAO.listarDetalleEstructuraExamen(codigo);
                    int num = 0;
                    for (DetalleEstructuraExamenBean obj : listaDetalle) {
                        out13.println("<tr id='z" + num + "'>");
                        out13.println("<input   type='hidden'  value='" + obj.getCODTEMA() + "' name='codTema'>");
                        out13.println("<td  align='center'  class='tituloFormulario'>");
                        out13.println("<input   type='text' class='input_text'  size='10' name='tema' id='tema" + num + "' readonly  value='" + obj.getNOMBTEMA()+ "' >");
                        out13.println("</td>");
                        out13.println("<input type='hidden' value='" + obj.getCODNIVEL() + "' name='codnivel' />");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' name='nivel' id='nivel" + num + "' size='10'  value='" + obj.getNOMBNIVEL() + "'/>");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' name='txtcantpreg1' id='txtcantpreg" + num + "'  value='" + obj.getCANTPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' name='txtpuntajepreg1' id='txtpuntajepreg" + num + "'  value='" + obj.getPUNTAJEXPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' id='txtpenalidadpreg" + num + "' name='txtpenalidadpreg1'  value='" + obj.getPENALIDADXPREG() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center' class='tituloFormulario'>");
                        out13.println("<input type='text' class='input_text' size='10' id='txtpenalidadayudas" + num + "' name='txtpenalidadayudas1'  value='" + obj.getPENALIDADAYUDA() + "' />");
                        out13.println("</td>");
                        out13.println("<td align='center'>");
                        out13.println("<a href='javascript:retirarItem(\"z" + num + "\",\"actObjetivo" + num + "\",\"" + obj.getCANTPREG() + "\",\"" + obj.getPUNTAJEXPREG() + "\");' title='Eliminar Fila'><img src='images/tacho.gif' border='0' /></a>");
                        out13.println("</td>");
                        out13.println("</tr>");
                        num++;
                    }
                    out13.println("</table>");
                    break;
                }
                case 20:{
                    String s_codigo=request.getParameter("CODIGO");
                    int   codigo=Integer.parseInt(s_codigo);
                    PrintWriter out14 = response.getWriter();
                    DetalleEstructuraExamenDAO objDetalleEstructuraExamenDAO=new DetalleEstructuraExamenDAO();
                    ArrayList<DetalleEstructuraExamenBean> listaDetalle = objDetalleEstructuraExamenDAO.listarDetalleEstructuraExamen(codigo);
                    int totalpregunta = 0;
                    double totalpuntaje = 0;
                    for(DetalleEstructuraExamenBean obj:listaDetalle){
                        totalpregunta = totalpregunta + obj.getCANTPREG();
                        totalpuntaje = totalpuntaje + obj.getPUNTAJEXPREG()*obj.getCANTPREG();
                    }
                    out14.println("<table height=\"2%\" width=\"55%\" border=\"0\" class=\"FondoTabla\">");
                    out14.println("<tr class=\"tituloTabla\"><td colspan=\"10\">. </td></tr><tr class=\"tituloFormulario\">");
                    out14.println("<td>Total Preguntas</td><td><input type=\"text\" class=\"input_text\" size=\"10\" name=\"txttotal\" id=\"txttotal\" value=\""+totalpregunta+"\"></td>");
                    out14.println("<td>Puntaje Total </td><td><input type=\"text\" class=\"input_text\" size=\"10\" name=\"txttotal\" id=\"txtpuntajetotal\" value=\""+totalpuntaje+"\"></td>");
                    out14.println("<td width=\"50%\" >&nbsp;</td></tr></table>");
                    break;
                }
                case 21:{
                    EstructuraExamenBean vl_EstructuraExamenBean = new Gson().fromJson(request.getParameter("objEstructuraExamenBean"), EstructuraExamenBean.class);
                    
                    PrintWriter out15 = response.getWriter();
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    ArrayList<EstructuraExamenBean> listaEstructuraExamen = objEstructuraExamenDAO.BuscarEstructuraExamen(vl_EstructuraExamenBean);
                    //out15.println("<tbody>");
                    out15.println("<table id='listado' class='display' cellspacing='0' cellpadding='0' width='100%'>");
                    out15.println("<thead>");
                    out15.println("<tr>");
                    out15.println("<th>Codigo Estructura</th>");
                    out15.println("<th>Semestre</th>");
                    out15.println("<th>Carrera</th>");
                    out15.println("<th>Materia</th>");
                    out15.println("<th>Tipo Examen</th>");
                    out15.println("<th>Tiempo Minutos</th>");
                    out15.println("<th>Estado</th>");
                    out15.println("<th>Seleccionar</th>");
                    out15.println("</tr>");
                    out15.println("</thead>");
                    out15.println("<tfoot>");
                    out15.println("<tr>");
                    out15.println("<th>Codigo Estructura</th>");
                    out15.println("<th>Semestre</th>");
                    out15.println("<th>Carrera</th>");
                    out15.println("<th>Materia</th>");
                    out15.println("<th>Tipo Examen</th>");
                    out15.println("<th>Tiempo Minutos</th>");
                    out15.println("<th>Estado</th>");
                    out15.println("<th>Seleccionar</th>");
                    out15.println("</tr>");
                    out15.println("</tfoot>");
                    out15.println("<tbody>");
                    for (EstructuraExamenBean obj : listaEstructuraExamen) {
                        out15.println("<tr>");
                        out15.println("<td>" + obj.getCODESTRUCEXAMEN() + "</td>");
                        out15.println("<td>" + obj.getNOMBSEMESTRE() + "</td>");
                        out15.println("<td>" + obj.getNOMBCARRERA() + "</td>");
                        out15.println("<td>" + obj.getNOMBMATERIA() + "</td>");
                        out15.println("<td>" + obj.getNOMBTIPEXAMEN() + "</td>");
                        out15.println("<td>" + obj.getTiempoMinutos()+ "</td>");
                        out15.println("<td>" + obj.getESTADO() + "</td>");
                        out15.println("<td>");
                        out15.println("<center>");
                        out15.println("<button type='button' onclick=\"ProgramarExamen('" + request.getContextPath() + "', '" + obj.getCODESTRUCEXAMEN() + "',"
                                + "'" + obj.getCODSEMESTRE() + "', '" + obj.getCODCARRERA() + "',"
                                + "'" + obj.getCODMATERIA() + "', '" + obj.getCODUNIDAD() + "',"
                                + "'" + obj.getCODTEMA() + "', '" + obj.getCODTIPEXAMEN() + "','"+obj.getESTADO()+"','"+obj.getTiempoMinutos()+"')\">");
                        out15.println("<img src='" + request.getContextPath() + "//imagenes//horariolab.png' width='20' height='20'>");
                        
                        if(obj.getESTADO().equalsIgnoreCase("P")){
                            out15.println("Seleccionar");
                        }else{
                            out15.println("Seleccionar");
                        }
                        out15.println("</button>");
                        out15.println("</center>");
                        out15.println("</td>");
                        out15.println("</tr>");
                    }
                    out15.println("</tbody>");
                    out15.println("</table>");
                    out15.println("</div>");
                    out15.println("</div>");
                    //out15.println("</tbody>");
                }
                case 22 :
                {
                    
                    String CODESTRUCT=new String(request.getParameter("codestruct").getBytes("ISO-8859-1"), "UTF-8");
                    
                    EstructuraExamenBean   objEstructuraBean=new EstructuraExamenBean();
                                           objEstructuraBean.setCODESTRUCEXAMEN(Integer.parseInt(CODESTRUCT));
                                           
                    
                     EstructuraExamenDAO  objEstructuraExamenDAO=new EstructuraExamenDAO();
                     
                    
                    SemestreDAO objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesionalRegistrarPregunta();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);

                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO. ListarNivelDificultadRegistrarPregunta();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                           
                    objEstructuraExamenDAO.EliminarCebaceraEstructuraExamen(objEstructuraBean);
                    objEstructuraExamenDAO.EliminarDetalleEstructuraExamen(objEstructuraBean);
                    int  codigo=objEstructuraExamenDAO.generarCodigo();
                    request.setAttribute("codigogenerado",""+codigo);
                    
                    ArrayList  listaEstructuraExamen=objEstructuraExamenDAO.ListarEstructuraExamen();
                    request.setAttribute("listaEstructuraExamen",listaEstructuraExamen);
                   
                    
                     TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                     ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                     request.setAttribute("listaTipoExamen",listaTipoExamen);
                     
                     
                     
                     
                    
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/EstructuraExamen/ExamenTraining/FrmEstructuraExamenTraining.jsp").forward(request, response); 
                    
                } 
             // AQUI EMPIEZA LA  ESTRUCTURA  TRAINING ---------------------------------------------------   
                
               case 23 :
                { 
                   int cantpreg,puntaje1, i=0;
                   PrintWriter out23 = response.getWriter();
                   String cbounidadtematica[]=request.getParameter("cbounidadtematica").split("-");  
                   String cbotema[]=request.getParameter("cbotema").split("-");  
                   String cbonivel[]=request.getParameter("cbonivel").split("-");  
                   String txtcantpreg=request.getParameter("txtcantpreg");  
                   String txtpuntajepreg=request.getParameter("txtpuntajepreg");  
                   String txtpenalidadpreg=request.getParameter("txtpenalidadpreg");  
                   String txtpenalidadayudas=request.getParameter("txtpenalidadayudas");
                  EstructuraExamenBean   objEstructExamBEAN=new EstructuraExamenBean();
                  ArrayList<EstructuraExamenBean> LISTADETALLEESTRUCEXAM=null;
                  
                  if(session.getAttribute("LISTADETALLEESTRUCEXAM")==null)
                  {   puntaje1=0;
                      cantpreg=0;
                      LISTADETALLEESTRUCEXAM=new   ArrayList<EstructuraExamenBean>();
                      objEstructExamBEAN.setNOMBUNIDTEMA(cbounidadtematica[1]);
                      objEstructExamBEAN.setNOMBTEMA(cbotema[1]);
                      objEstructExamBEAN.setNOMBCBONIVEL(cbonivel[1]);
                      objEstructExamBEAN.setTXTCANTPREG(Integer.parseInt(txtcantpreg));
                      objEstructExamBEAN.setTXTPUNTAJEPREG(Integer.parseInt(txtpuntajepreg));
                      objEstructExamBEAN.setTXTPENALIDADPREG(Integer.parseInt(txtpenalidadpreg));
                      objEstructExamBEAN.setTXTPENALIDADAYUDAS(Integer.parseInt(txtpenalidadayudas));
                      LISTADETALLEESTRUCEXAM.add(objEstructExamBEAN);
                      cantpreg=cantpreg+Integer.parseInt(txtcantpreg);
                      puntaje1=puntaje1+Integer.parseInt(txtpuntajepreg)*Integer.parseInt(txtcantpreg);
                      session.setAttribute("LISTADETALLEESTRUCEXAM",LISTADETALLEESTRUCEXAM);
                      session.setAttribute("cantpreg",cantpreg);
                      session.setAttribute("puntaje",puntaje1);
                      System.out.println(Integer.parseInt(txtpuntajepreg));
                  }
                  else
                  {   LISTADETALLEESTRUCEXAM=(ArrayList<EstructuraExamenBean>)session.getAttribute("LISTADETALLEESTRUCEXAM");
                      cantpreg=Integer.parseInt(session.getAttribute("cantpreg").toString())+Integer.parseInt(txtcantpreg);
                      
                      
                      //puntaje1=Integer.parseInt(puntaje1);
                     
                      objEstructExamBEAN.setNOMBUNIDTEMA(cbounidadtematica[1]);
                      objEstructExamBEAN.setNOMBTEMA(cbotema[1]);
                      objEstructExamBEAN.setNOMBCBONIVEL(cbonivel[1]);
                      objEstructExamBEAN.setTXTCANTPREG(Integer.parseInt(txtcantpreg));
                      objEstructExamBEAN.setTXTPUNTAJEPREG(Integer.parseInt(txtpuntajepreg));
                      objEstructExamBEAN.setTXTPENALIDADPREG(Integer.parseInt(txtpenalidadpreg));
                      objEstructExamBEAN.setTXTPENALIDADAYUDAS(Integer.parseInt(txtpenalidadayudas));
                      LISTADETALLEESTRUCEXAM.add(objEstructExamBEAN);
                      session.setAttribute("LISTADETALLEESTRUCEXAM",LISTADETALLEESTRUCEXAM); 
                      puntaje1=Integer.parseInt(session.getAttribute("puntaje").toString())+Integer.parseInt(txtpuntajepreg)*Integer.parseInt(txtcantpreg);
                                            
                      session.setAttribute("cantpreg",cantpreg);
                      session.setAttribute("puntaje",puntaje1);
                      
                      System.out.println(Integer.parseInt(txtpuntajepreg));
                  }
                    
                    out23.print("<table    border=\"0\" class=\"table table-striped table-bordered dt-responsive nowrap  table-hover \" cellspacing=\"0\" width=\"100%\">");
                        out23.print("<thead>");
                        out23.print("<tr  class=\"panel-info \">");                    
                                out23.print("<th   align=\"center\" >Unidad Tematica</th>");
                                out23.print("<th   align=\"center\" >Tema</th>");
                                out23.print("<th   align=\"center\" >Nivel Dificultad</th>");
                                out23.print("<th   align=\"center\">Cantidad x Preg</th>");
                                out23.print("<th   align=\"center\">Puntaje x Preg</th>");
                                out23.print("<th  align=\"center\">Penalidad xPregunta Errada</th>");
                                out23.print("<th   align=\"center\">Penalidad x Utilizar Ayudas</th>");
                                out23.print("<th   align=\"center\">Acciones </th>");
                        out23.print("</tr>");
                     out23.print("</thead>");                    
                    out23.print("<tbody>");
                    for(EstructuraExamenBean objestruc:LISTADETALLEESTRUCEXAM)
                    {                out23.print("<tr>");
                        out23.print("<td><div >"+objestruc.getNOMBUNIDTEMA().trim()+"</div></td>");                   
                        out23.print("<td>"+objestruc.getNOMBTEMA().trim()+"</td> ");
                        out23.print("<td>"+objestruc.getNOMBCBONIVEL().trim()+"</td> ");
                        out23.print("<td>"+objestruc.getTXTCANTPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPUNTAJEPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPENALIDADPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPENALIDADAYUDAS()+"</td>");
                        out23.print("<td>"
                                + "<button  class=\"btn btn-primary\"   onclick=\"EliminarEstructuraExamen2('"+request.getContextPath()+"',"+i+")\"   > <img src='"+request.getContextPath()+"/imagenes/eliminarregistro.png' width=\"30px\"  height=\"30px\"> <br> </td>");
                        out23.print("</tr>");
                        i++;
                    }
                    out23.print("</tbody>");
                    out23.print("</table>");
                    
                    out23.print("<table    border=\"0\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\">");
                    
                    out23.print("<tbody>");
                    out23.print("<tr>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td>Total  Preguntas </td>");
                    out23.print("<td><input type=\"text\" class=\"form-control\"  disabled=false  name=\"txttotal\"  id=\"txttotal\"   value='"+cantpreg+"'   ></td>");
                    out23.print("<td>Puntaje Total </td>");
                    out23.print("<td><input type=\"text\" class=\"form-control\"  disabled=false  name=\"txttotalpreguntas\"  id=\"txttotalpreguntas\"  value='"+puntaje1+"'   ></td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("</tr>");
                    out23.print("</table>");
                   
                    
                  break;  
                } 
               case 24:
               {
                     int cantpreg,puntaje1;
                   PrintWriter out23 = response.getWriter();
                   String cbounidadtematica[]=request.getParameter("cbounidadtematica").split("-");  
                   String cbotema[]=request.getParameter("cbotema").split("-");  
                   String cbonivel[]=request.getParameter("cbonivel").split("-");  
                   String txtcantpreg=request.getParameter("txtcantpreg");  
                   String txtpuntajepreg=request.getParameter("txtpuntajepreg");  
                   String txtpenalidadpreg=request.getParameter("txtpenalidadpreg");  
                   String txtpenalidadayudas=request.getParameter("txtpenalidadayudas");
                  EstructuraExamenBean   objEstructExamBEAN=new EstructuraExamenBean();
                  ArrayList<EstructuraExamenBean> LISTADETALLEESTRUCEXAM=null;
                  
                  if(session.getAttribute("LISTADETALLEESTRUCEXAM")==null)
                  {   puntaje1=0;
                      cantpreg=0;
                      LISTADETALLEESTRUCEXAM=new   ArrayList<EstructuraExamenBean>();
                      objEstructExamBEAN.setNOMBUNIDTEMA(cbounidadtematica[1]);
                      objEstructExamBEAN.setNOMBTEMA(cbotema[1]);
                      objEstructExamBEAN.setNOMBCBONIVEL(cbonivel[1]);
                      objEstructExamBEAN.setTXTCANTPREG(Integer.parseInt(txtcantpreg));
                      objEstructExamBEAN.setTXTPUNTAJEPREG(Integer.parseInt(txtpuntajepreg));
                      objEstructExamBEAN.setTXTPENALIDADPREG(Integer.parseInt(txtpenalidadpreg));
                      objEstructExamBEAN.setTXTPENALIDADAYUDAS(Integer.parseInt(txtpenalidadayudas));
                      LISTADETALLEESTRUCEXAM.add(objEstructExamBEAN);
                      cantpreg=cantpreg+Integer.parseInt(txtcantpreg);
                      puntaje1=puntaje1+Integer.parseInt(txtpuntajepreg)*Integer.parseInt(txtcantpreg);
                      session.setAttribute("LISTADETALLEESTRUCEXAM",LISTADETALLEESTRUCEXAM);
                      session.setAttribute("cantpreg",cantpreg);
                      session.setAttribute("puntaje",puntaje1);
                      System.out.println(Integer.parseInt(txtpuntajepreg));
                  }
                  else
                  {   LISTADETALLEESTRUCEXAM=(ArrayList<EstructuraExamenBean>)session.getAttribute("LISTADETALLEESTRUCEXAM");
                      cantpreg=Integer.parseInt(session.getAttribute("cantpreg").toString())+Integer.parseInt(txtcantpreg);
                      
                      
                      //puntaje1=Integer.parseInt(puntaje1);
                     
                      objEstructExamBEAN.setNOMBUNIDTEMA(cbounidadtematica[1]);
                      objEstructExamBEAN.setNOMBTEMA(cbotema[1]);
                      objEstructExamBEAN.setNOMBCBONIVEL(cbonivel[1]);
                      objEstructExamBEAN.setTXTCANTPREG(Integer.parseInt(txtcantpreg));
                      objEstructExamBEAN.setTXTPUNTAJEPREG(Integer.parseInt(txtpuntajepreg));
                      objEstructExamBEAN.setTXTPENALIDADPREG(Integer.parseInt(txtpenalidadpreg));
                      objEstructExamBEAN.setTXTPENALIDADAYUDAS(Integer.parseInt(txtpenalidadayudas));
                      LISTADETALLEESTRUCEXAM.add(objEstructExamBEAN);
                      session.setAttribute("LISTADETALLEESTRUCEXAM",LISTADETALLEESTRUCEXAM); 
                      puntaje1=Integer.parseInt(session.getAttribute("puntaje").toString())+Integer.parseInt(txtpuntajepreg)*Integer.parseInt(txtcantpreg);
                                            
                      session.setAttribute("cantpreg",cantpreg);
                      session.setAttribute("puntaje",puntaje1);
                      
                      System.out.println(Integer.parseInt(txtpuntajepreg));
                  }
                    
                    out23.print("<table    border=\"0\" class=\"table table-striped table-bordered dt-responsive nowrap  table-hover \" cellspacing=\"0\" width=\"100%\">");
                        out23.print("<thead>");
                        out23.print("<tr  class=\"panel-info \">");                    
                                out23.print("<th   align=\"center\" >Unidad Tematica</th>");
                                out23.print("<th   align=\"center\" >Tema</th>");
                                out23.print("<th   align=\"center\" >Nivel Dificultad</th>");
                                out23.print("<th   align=\"center\">Cantidad x Preg</th>");
                                out23.print("<th   align=\"center\">Puntaje x Preg</th>");
                                out23.print("<th  align=\"center\">Penalidad xPregunta Errada</th>");
                                out23.print("<th   align=\"center\">Penalidad x Utilizar Ayudas</th>");
                                out23.print("<th   align=\"center\">Acciones </th>");
                        out23.print("</tr>");
                     out23.print("</thead>");                    
                    out23.print("<tbody>");
                    for(EstructuraExamenBean objestruc:LISTADETALLEESTRUCEXAM)
                    {                out23.print("<tr>");
                        out23.print("<td><div >"+objestruc.getNOMBUNIDTEMA().trim()+"</div></td>");                   
                        out23.print("<td>"+objestruc.getNOMBTEMA().trim()+"</td> ");
                        out23.print("<td>"+objestruc.getNOMBCBONIVEL().trim()+"</td> ");
                        out23.print("<td>"+objestruc.getTXTCANTPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPUNTAJEPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPENALIDADPREG()+"</td>");
                        out23.print("<td>"+objestruc.getTXTPENALIDADAYUDAS()+"</td>");
                        out23.print("<td>"
                                + "<button  class=\"btn btn-primary\"   onclick=\"EliminarEstructuraExamen2('"+request.getContextPath()+"',0)\"   > <img src='"+request.getContextPath()+"/imagenes/eliminarregistro.png' width=\"30px\"  height=\"30px\"> <br> </td>");
                        out23.print("</tr>");
                    }
                    out23.print("</tbody>");
                    out23.print("</table>");
                    
                    out23.print("<table    border=\"0\" class=\"table table-striped table-bordered dt-responsive nowrap\" cellspacing=\"0\" width=\"100%\">");
                    
                    out23.print("<tbody>");
                    out23.print("<tr>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td>Total  Preguntas </td>");
                    out23.print("<td><input type=\"text\" class=\"form-control\"  disabled=false  name=\"txttotal\"  id=\"txttotal\"   value='"+cantpreg+"'   ></td>");
                    out23.print("<td>Puntaje Total </td>");
                    out23.print("<td><input type=\"text\" class=\"form-control\"  disabled=false  name=\"txttotalpreguntas\"  id=\"txttotalpreguntas\"  value='"+puntaje1+"'   ></td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("<td >&nbsp; </td>");
                    out23.print("</tr>");
                    out23.print("</table>");
                   
                   break;
               }
                
                
            }
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}