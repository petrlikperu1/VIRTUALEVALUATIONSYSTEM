package SERVLET;

import BEAN.*;
import DAO.CarreraProfesionalDAO;
import DAO.MateriaDAO;
import DAO.PreguntaDAO;
import DAO.TemaDAO;
import DAO.UnidadTematicaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import UTIL.Constantes;


public class TemaServlet extends HttpServlet {

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
                case 1:{
                    TemaDAO  objTemaDAO=new TemaDAO();
                    ArrayList  listaTema=objTemaDAO.MostrarTema();
                    request.setAttribute("listaTema",listaTema);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaMant.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3:{
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    TemaDAO  objTemaDAO=new TemaDAO();
                    int codigo=objTemaDAO.generarCodigo();
                    request.setAttribute("listaCarreraProfesional1",listaCarreraProfesional);
                    request.setAttribute("codigogenerado1",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  scarrera=request.getParameter("cbocarrera");
                    int     carrera=Integer.parseInt(scarrera);
                    String  smateria=request.getParameter("cbomateria");
                    int     materia=Integer.parseInt(smateria);
                    String  sunidad=request.getParameter("cbounidadtematica");
                    int     unidad=Integer.parseInt(sunidad);
                    String  nombre=request.getParameter("txtnombre");

                    TemaBean    objTemaBean=new TemaBean();
                                objTemaBean.setCODTEMA(codigo);
                                objTemaBean.setCODCARRERA(carrera);
                                objTemaBean.setCODMATERIA(materia);
                                objTemaBean.setCODUNIDTEMA(unidad);
                                objTemaBean.setNOMBTEMA(nombre);
                                objTemaBean.setESTADO("A");
                    TemaDAO  objTemaDAO=new TemaDAO();
                    int valido=objTemaDAO.InsertarTema(objTemaBean);

                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objTemaDAO.generarCodigo();
                    }else mensaje="Registro no Insertado !!!";
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5:{
                    TemaDAO  objTemaDAO=new TemaDAO();
                    ArrayList  listaTema=objTemaDAO.ListarTema();
                    request.setAttribute("listaTema",listaTema);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaMant.jsp").forward(request, response);
                    break;
                }
                case 6:{
                    String  codcad=request.getParameter("CODIGO");
                    int     codigo=Integer.parseInt(codcad);
                    String  scarrera=request.getParameter("CARRERA");
                    int     carrera=Integer.parseInt(scarrera);
                    String  smateria=request.getParameter("MATERIA");
                    int     materia=Integer.parseInt(smateria);
                    String  sunidad=request.getParameter("UNIDAD");
                    int     unidad=Integer.parseInt(sunidad);
                    TemaBean    objTemaBean=new TemaBean();
                                objTemaBean.setCODTEMA(codigo);
                                objTemaBean.setCODCARRERA(carrera);
                                objTemaBean.setCODMATERIA(materia);
                                objTemaBean.setCODUNIDTEMA(unidad);
                    TemaDAO objTemaDAO=new TemaDAO();
                    objTemaBean=objTemaDAO.TraerTema(objTemaBean);
                    request.setAttribute("datos",objTemaBean);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaModificarMant.jsp").forward(request, response);
                    break;
                }           
                case 7:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  scarrera=request.getParameter("hddcarrera");
                    int     carrera=Integer.parseInt(scarrera);
                    String  smateria=request.getParameter("hddmateria");
                    int     materia=Integer.parseInt(smateria);
                    String  sunidad=request.getParameter("hddunidadtematica");
                    int     unidad=Integer.parseInt(sunidad);
                    String  nombre=request.getParameter("txtnombre");
                    String  estado=request.getParameter("cboestado");
                    TemaBean    objTemaBean=new TemaBean();
                                objTemaBean.setCODTEMA(codigo);
                                objTemaBean.setCODCARRERA(carrera);
                                objTemaBean.setCODMATERIA(materia);
                                objTemaBean.setCODUNIDTEMA(unidad);
                                objTemaBean.setNOMBTEMA(nombre);
                                objTemaBean.setESTADO(estado);
                    TemaDAO  objTemaDAO=new TemaDAO();
                    int valido=objTemaDAO.ModificarTema(objTemaBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";
                    objTemaBean =objTemaDAO.TraerTema(objTemaBean);
                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objTemaBean);   
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8:{  
                    String  codcad=request.getParameter("CODIGO");
                    int     codigo=Integer.parseInt(codcad);
                    String  scarrera=request.getParameter("CARRERA");
                    int     carrera=Integer.parseInt(scarrera);
                    String  smateria=request.getParameter("MATERIA");
                    int     materia=Integer.parseInt(smateria);
                    String  sunidad=request.getParameter("UNIDAD");
                    int     unidad=Integer.parseInt(sunidad);
                    TemaBean    objTemaBean=new TemaBean();
                                objTemaBean.setCODTEMA(codigo);
                                objTemaBean.setCODCARRERA(carrera);
                                objTemaBean.setCODMATERIA(materia);
                                objTemaBean.setCODUNIDTEMA(unidad);
                    TemaDAO  objTemaDAO=new TemaDAO();              
                    objTemaDAO.EliminarTema(objTemaBean);  

                    ArrayList  listaTema=objTemaDAO.ListarTema();
                    request.setAttribute("listaTema",listaTema);
                    getServletContext().getRequestDispatcher("/Entidades/Tema/FrmTemaMant.jsp").forward(request, response);
                    break;
                }
                case 9:{                
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter(); 
                    String   CODCAR=request.getParameter("CODCAR");
                    int     carrera=Integer.parseInt(CODCAR);
                    String   CODMAT=request.getParameter("CODMAT");
                    int     materia=Integer.parseInt(CODMAT);

                    MateriaBean  objMateriaBean=new MateriaBean();
                                  objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO   objMateriaDAO=new MateriaDAO();
                    ArrayList<MateriaBean>  listamateria=objMateriaDAO.FiltrarMateria(objMateriaBean);

                    out9.println("<select name='cbomateria' onchange='cargarUnidadTematica(this.value, 0)'>");  
                    out9.println("<option value='0'>-Seleccionar Materia-</option>"); 
                    for(MateriaBean obj:listamateria){
                        if(obj.getCODMATERIA()==materia){
                            out9.println("<option value='"+obj.getCODMATERIA()+"' selected>"+obj.getNOMBMATERIA()+"</option>");
                        }else{
                            out9.println("<option value='"+obj.getCODMATERIA()+"' >"+obj.getNOMBMATERIA()+"</option>");
                        }
                    }                
                    out9.println("</select>");
                    break;
                }
                case 10:{                
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out10 = response.getWriter(); 
                    String   CODCAR=request.getParameter("CODCAR");
                    int     carrera=Integer.parseInt(CODCAR);
                    String   CODMAT=request.getParameter("CODMAT");
                    int     materia=Integer.parseInt(CODMAT);
                    String   CODUNI=request.getParameter("CODUNI");
                    int     unidad=Integer.parseInt(CODUNI);
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                  objUnidadTematicaBean.setCODCARRERA(carrera);
                                  objUnidadTematicaBean.setCODMATERIA(materia);
                    UnidadTematicaDAO   objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList<UnidadTematicaBean>  listaunidadtematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                    out10.println("<select name='cbounidadtematica' onchange=\"cargarTema(this.value,0)\">");  
                    out10.println("<option value='0'>-Seleccionar Unidad-</option>"); 
                    for(UnidadTematicaBean obj:listaunidadtematica){
                        if(obj.getCODUNIDTEMA()==unidad){
                            out10.println("<option value='"+obj.getCODUNIDTEMA()+"' selected>"+obj.getNOMBUNIDTEMA()+"</option>");
                        }else{
                            out10.println("<option value='"+obj.getCODUNIDTEMA()+"' >"+obj.getNOMBUNIDTEMA()+"</option>");
                        }
                    }                
                    out10.println("</select>");   
                    break;
                }
                case 11:{                
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out11 = response.getWriter(); 
                String   CODCAR=request.getParameter("CODCAR");
                int     carrera=Integer.parseInt(CODCAR);
                String   CODMAT=request.getParameter("CODMAT");
                int     materia=Integer.parseInt(CODMAT);
                String   CODUNID=request.getParameter("CODUNID");
                int     unidad=Integer.parseInt(CODUNID);
                String CODTEM=request.getParameter("CODTEM");
                int tema=Integer.parseInt(CODTEM);
                
                TemaBean    objTemaBean=new TemaBean();
                            objTemaBean.setCODCARRERA(carrera);
                            objTemaBean.setCODMATERIA(materia);
                            objTemaBean.setCODUNIDTEMA(unidad);
                            objTemaBean.setCODTEMA(tema);
                TemaDAO   objTemaDAO=new TemaDAO();
                ArrayList<TemaBean>  listatema=objTemaDAO.FiltrarTema(objTemaBean);

                out11.println("<select name='cbotema' onchange='cargarPregunta(this.value,0)'>");  
                out11.println("<option value='0'>-----------------------</option>"); 
                for(TemaBean obj:listatema){
                    if(obj.getCODTEMA()==tema){
                        out11.println("<option value='"+obj.getCODTEMA()+"' selected>"+obj.getNOMBTEMA()+"</option>");
                    }else{
                        out11.println("<option value='"+obj.getCODTEMA()+"' >"+obj.getNOMBTEMA()+"</option>");
                    }
                }                
                out11.println("</select>");                     
                break;
            }
            case 12:{                
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out10 = response.getWriter(); 
                //String   CODCAR=request.getParameter("CODCAR");
                //int     carrera=Integer.parseInt(CODCAR);
                //String   CODMAT=request.getParameter("CODMAT");
                //int     materia=Integer.parseInt(CODMAT);
                
                String CODTEM=request.getParameter("CODTEM");
                int tema=Integer.parseInt(CODTEM);
                String   CODPREG=request.getParameter("CODPREG");
                int     pregunta=Integer.parseInt(CODPREG);
                
                PreguntaBean  objPreguntaBean=new PreguntaBean();
                              //objUnidadTematicaBean.setCODCARRERA(carrera);
                              //objUnidadTematicaBean.setCODMATERIA(materia);
                                objPreguntaBean.setCODTEMA(tema);
                PreguntaDAO   objPreguntaDAO=new PreguntaDAO();
                ArrayList<PreguntaBean>  listaunidadtematica=objPreguntaDAO.FiltrarPregunta(objPreguntaBean);

                int i=1; 
                for(PreguntaBean obj:listaunidadtematica){
                    out10.println("<table border='1'>");  
                    out10.println("<tr>");  
                        out10.println("<td width='50'>"+obj.getCODPREG()+"</td>");
                        out10.println("<td width='250'>"+obj.getENUNCIADOPREG()+"</td>");
                        out10.println("<td width='100'>"+obj.getNOMBNIVEL()+"</td>");
                        if(i==1){
                            out10.println("<td width='50'><input type='radio' checked name='rdPregunta' value='"+obj.getCODPREG()+"'></td>");
                        }else{
                            out10.println("<td width='50'><input type='radio' name='rdPregunta' value='"+obj.getCODPREG()+"'></td>");
                        }
                        
                    out10.println("</tr>"); 
                    out10.println("</table>");
                    i++;
                }                
                  
                break;
            }
            case  13:
            {     String  ajustado;
                 response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out10 = response.getWriter(); 
                    String   CODCAR=request.getParameter("CODCAR");
                    int     carrera=Integer.parseInt(CODCAR);
                    String   CODMAT=request.getParameter("CODMAT");
                    int     materia=Integer.parseInt(CODMAT);
                    String   CODUNI=request.getParameter("CODUNID");
                    String   cbounidadtematica[]=CODUNI.split("-");
                    
                    int     unidad=Integer.parseInt(cbounidadtematica[0]);
                    TemaBean  objTemaBean=new TemaBean();
                                  objTemaBean.setCODCARRERA(carrera);
                                  objTemaBean.setCODMATERIA(materia);
                                  objTemaBean.setCODUNIDTEMA(unidad);
                    TemaDAO   objTemaDAO=new TemaDAO();
                    ArrayList<TemaBean>  listatema=objTemaDAO.FiltrarTema(objTemaBean);
                    out10.println("Tema:<select name='cbotema'  class=\"form-control col-lg-12\" id='cbotema'>");  
                    out10.println("<option value='0'>----------------------</option>"); 
                    for(TemaBean obj:listatema){
                        ajustado=(obj.getCODTEMA()+"-"+obj.getNOMBTEMA()).trim();
                        
                        out10.println("<option value='"+ajustado+"' >"+obj.getNOMBTEMA()+"</option>");
                    }                
                    out10.println("</select>");   
               break; 
            }
             case 14:{
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out10 = response.getWriter(); 
                String   CODCAR=request.getParameter("CODCAR");
                int     carrera=Integer.parseInt(CODCAR);
                String   CODMAT=request.getParameter("CODMAT");
                int     materia=Integer.parseInt(CODMAT);
                String   CODUNI=request.getParameter("CODUNID");
                int     unidad=Integer.parseInt(CODUNI);
                String   CODTEMA=request.getParameter("CODTEMA");
                int     tema=Integer.parseInt(CODTEMA);
                TemaBean  objTemaBean=new TemaBean();
                              objTemaBean.setCODCARRERA(carrera);
                              objTemaBean.setCODMATERIA(materia);
                              objTemaBean.setCODUNIDTEMA(unidad);
                TemaDAO   objTemaDAO=new TemaDAO();
                ArrayList<TemaBean>  listatema=objTemaDAO.FiltrarTema(objTemaBean);
                out10.println("<select name='cbotema' id='cbotema' >");  
                out10.println("<option value='0'>----------------------</option>"); 
                for(TemaBean obj:listatema){
                    if(obj.getCODTEMA() == tema) out10.println("<option value='"+obj.getCODTEMA()+"' selected>"+obj.getNOMBTEMA()+"</option>");
                    else out10.println("<option value='"+obj.getCODTEMA()+"'>"+obj.getNOMBTEMA()+"</option>");
                }                
                out10.println("</select>");
                break;
            }
             case 15:
             {
                 
                  
                 
                 
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