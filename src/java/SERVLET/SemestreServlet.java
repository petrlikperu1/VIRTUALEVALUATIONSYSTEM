/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import BEAN.SemestreBean;
import DAO.SemestreDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SemestreServlet extends HttpServlet {

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
                   
                    SemestreDAO  objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.MostrarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreMant.jsp").forward(request, response);
                     
                     
                     
                    break;
                }
                case 2 :{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3 :{
                    SemestreDAO  objSemestreDAO=new SemestreDAO();
                    int  codigo=objSemestreDAO.GenerarCodigoSemestre();
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4 :{
                    String mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");
                    String  fecini=request.getParameter("txtfechainicio");
                    String  fecfin=request.getParameter("txtfechafin");

                    SemestreBean    objSemestreBean=new SemestreBean();
                                    objSemestreBean.setCODSEMESTRE(codigo);
                                    objSemestreBean.setNOMBSEMESTRE(nombre);
                                    objSemestreBean.setFECHAINICIO(fecini);
                                    objSemestreBean.setFECHAFIN(fecfin);
                                    objSemestreBean.setESTADO("A");
                    SemestreDAO objSemestreDAO=new SemestreDAO();              
                    int valido= objSemestreDAO.InsertarSemestre(objSemestreBean);
                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objSemestreDAO.GenerarCodigoSemestre();
                    }else mensaje="Registro no Insertado !!!";

                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5 :{
                    SemestreDAO  objSemestreDAO=new SemestreDAO();
                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreMant.jsp").forward(request, response);
                    break;
                }
                case 6 :{
                    String  codcad=request.getParameter("COD");
                    int     codigo=Integer.parseInt(codcad);
                    SemestreBean  objSemestreBean=new SemestreBean();
                    SemestreDAO   objSemestreDAO=new SemestreDAO();
                    objSemestreBean=objSemestreDAO.TraerSemestre(codigo);
                    request.setAttribute("datos",objSemestreBean);

                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreModificarMant.jsp").forward(request, response);
                    break;
                }           
                case 7 :{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");
                    String  fecini=request.getParameter("txtfechainicio");
                    String  fecfin=request.getParameter("txtfechafin");
                    String  estado=request.getParameter("cboestado");

                    SemestreBean    objSemestreBean=new SemestreBean();
                                    objSemestreBean.setCODSEMESTRE(codigo);
                                    objSemestreBean.setNOMBSEMESTRE(nombre);
                                    objSemestreBean.setFECHAINICIO(fecini);
                                    objSemestreBean.setFECHAFIN(fecfin);
                                    objSemestreBean.setESTADO(estado);
                    SemestreDAO  objSemestreDAO=new SemestreDAO();              
                    int valido= objSemestreDAO.ModificarSemestre(objSemestreBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";

                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objSemestreBean);   
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8 :{    
                    String  codcad=request.getParameter("COD");                
                    int     codigo=Integer.parseInt(codcad);
                    SemestreBean  objSemestreBean=new SemestreBean();
                                objSemestreBean.setCODSEMESTRE(codigo);
                    SemestreDAO  objSemestreDAO=new SemestreDAO();              
                    objSemestreDAO.EliminarSemestre(objSemestreBean);  

                    ArrayList  listaSemestre=objSemestreDAO.ListarSemestre();
                    request.setAttribute("listaSemestre",listaSemestre);
                    getServletContext().getRequestDispatcher("/Entidades/Semestre/FrmSemestreMant.jsp").forward(request, response);
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
