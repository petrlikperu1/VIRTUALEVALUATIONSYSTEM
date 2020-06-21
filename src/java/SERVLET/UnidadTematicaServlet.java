package SERVLET;

import BEAN.*;
import DAO.CarreraProfesionalDAO;
import DAO.MateriaDAO;
import DAO.UnidadTematicaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import  UTIL.Constantes;


public class UnidadTematicaServlet extends HttpServlet {

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
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.MostrarUnidadTematica();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaMant.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3:{
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    int codigo=objUnidadTematicaDAO.generarCodigo();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaRegistrarMant.jsp").forward(request, response);
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
                    String  nombre=request.getParameter("txtnombre");

                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                        objUnidadTematicaBean.setCODUNIDTEMA(codigo);
                                        objUnidadTematicaBean.setCODCARRERA(carrera);
                                        objUnidadTematicaBean.setCODMATERIA(materia);
                                        objUnidadTematicaBean.setNOMBUNIDTEMA(nombre);
                                        objUnidadTematicaBean.setESTADO("A");
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    int valido=objUnidadTematicaDAO.InsertarUnidadTematica(objUnidadTematicaBean);

                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objUnidadTematicaDAO.generarCodigo();
                    }else mensaje="Registro no Insertado !!!";
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5:{
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematica();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaMant.jsp").forward(request, response);
                    break;
                }
                case 6:{
                    String  codcad=request.getParameter("CODIGO");
                    int     codigo=Integer.parseInt(codcad);
                    String  scarrera=request.getParameter("CARRERA");
                    int     carrera=Integer.parseInt(scarrera);
                    String  smateria=request.getParameter("MATERIA");
                    int     materia=Integer.parseInt(smateria);
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                        objUnidadTematicaBean.setCODUNIDTEMA(codigo);
                                        objUnidadTematicaBean.setCODCARRERA(carrera);
                                        objUnidadTematicaBean.setCODMATERIA(materia);
                    UnidadTematicaDAO   objUnidadTematicaDAO=new UnidadTematicaDAO();
                    objUnidadTematicaBean=objUnidadTematicaDAO.TraerUnidadTematica(objUnidadTematicaBean);
                    request.setAttribute("datos",objUnidadTematicaBean);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaModificarMant.jsp").forward(request, response);
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
                    String  nombre=request.getParameter("txtnombre");
                    String  estado=request.getParameter("cboestado");
                    UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                        objUnidadTematicaBean.setCODUNIDTEMA(codigo);
                                        objUnidadTematicaBean.setCODCARRERA(carrera);
                                        objUnidadTematicaBean.setCODMATERIA(materia);
                                        objUnidadTematicaBean.setNOMBUNIDTEMA(nombre);
                                        objUnidadTematicaBean.setESTADO(estado);
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();
                    int valido=objUnidadTematicaDAO.ModificarUnidadTematica(objUnidadTematicaBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";
                    objUnidadTematicaBean=objUnidadTematicaDAO.TraerUnidadTematica(objUnidadTematicaBean);
                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objUnidadTematicaBean);   
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8:{                
                    String  codcad=request.getParameter("CODIGO");                
                    int     codigo=Integer.parseInt(codcad);
                    UnidadTematicaBean objUnidadTematicaBean=new UnidadTematicaBean();
                                        objUnidadTematicaBean.setCODUNIDTEMA(codigo);
                    UnidadTematicaDAO  objUnidadTematicaDAO=new UnidadTematicaDAO();              
                    objUnidadTematicaDAO.EliminarUnidadTematica(objUnidadTematicaBean);  

                    ArrayList  listaUnidadTematica=objUnidadTematicaDAO.ListarUnidadTematica();
                    request.setAttribute("listaUnidadTematica",listaUnidadTematica);
                    getServletContext().getRequestDispatcher("/Entidades/Unidad/FrmUnidadTematicaMant.jsp").forward(request, response);
                    break;
                }
                case 9:{                
                  response.setContentType("text/html;charset=UTF-8");
                  PrintWriter out9 = response.getWriter(); 
                  String   CODCAR=request.getParameter("CODCAR");
                  int     carrera=Integer.parseInt(CODCAR);
                  String   CODMAT=request.getParameter("CODMAT");
                  int     materia=Integer.parseInt(CODMAT);
                  String  ajustado;
                  UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                objUnidadTematicaBean.setCODCARRERA(carrera);
                                objUnidadTematicaBean.setCODMATERIA(materia);
                  UnidadTematicaDAO   objUnidadTematicaDAO=new UnidadTematicaDAO();
                  ArrayList<UnidadTematicaBean>  listaunidadtematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                  
                  String   ruta=request.getContextPath();
                  
                  out9.println("Unidad Tematica:<select name='cbounidadtematica' class=\"form-control col-lg-12\"  id='cbounidadtematica'  onchange=\"cargarTema('"+ruta+"','Tema',13,this.value)\"           >");   
                
                  out9.println("<option value='0'>--------------------</option>"); 
               
                  for(UnidadTematicaBean obj:listaunidadtematica)
                  {   
                      ajustado=(obj.getCODUNIDTEMA()+"-"+obj.getNOMBUNIDTEMA()).trim();
                      out9.println("<option value='"+ajustado+"' >"+obj.getNOMBUNIDTEMA()+""+"</option>");                     
                  }                
                  out9.println("</select>");  
                  
                  
                  
                    break;
                }
                 case 10:{                
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter(); 
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
                    String   ruta=request.getContextPath();
                    out9.println("<select name='cbounidadtematica' id='cbounidadtematica' onchange=\"cargarTema('"+ruta+"','Tema',13,this.value)\">");   
                    out9.println("<option value='0'>--------------------</option>"); 
                    for(UnidadTematicaBean obj:listaunidadtematica){
                        if(obj.getCODUNIDTEMA() == unidad) out9.println("<option value='"+obj.getCODUNIDTEMA()+"' selected>"+obj.getNOMBUNIDTEMA()+"</option>");
                        else out9.println("<option value='"+obj.getCODUNIDTEMA()+"' >"+obj.getNOMBUNIDTEMA()+"</option>");
                    }                
                    out9.println("</select>");   
                    break;
                }
                 case 11:{                
                  response.setContentType("text/html;charset=UTF-8");
                  PrintWriter out9 = response.getWriter(); 
                  String   CODCAR=request.getParameter("CODCAR");
                  int     carrera=Integer.parseInt(CODCAR);
                  String   CODMAT=request.getParameter("CODMAT");
                  int     materia=Integer.parseInt(CODMAT);

                  UnidadTematicaBean  objUnidadTematicaBean=new UnidadTematicaBean();
                                objUnidadTematicaBean.setCODCARRERA(carrera);
                                objUnidadTematicaBean.setCODMATERIA(materia);
                  UnidadTematicaDAO   objUnidadTematicaDAO=new UnidadTematicaDAO();
                  ArrayList<UnidadTematicaBean>  listaunidadtematica=objUnidadTematicaDAO.FiltrarUnidadTematica(objUnidadTematicaBean);
                  
                  String   ruta=request.getContextPath();
                  
                 
                  out9.println("<select name='cbounidadtematica'  id='cbounidadtematica'             >");   
                
                  out9.println("<option value='0'>--------------------</option>"); 
                  for(UnidadTematicaBean obj:listaunidadtematica)
                  {   out9.println("<option value='"+obj.getCODUNIDTEMA()+"' >"+obj.getNOMBUNIDTEMA()+"</option>");                     
                  }                
                  out9.println("</select>");   
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