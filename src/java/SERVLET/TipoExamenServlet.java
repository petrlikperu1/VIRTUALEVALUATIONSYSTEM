package SERVLET;

import BEAN.TipoExamenBean;
import DAO.TipoExamenDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import  UTIL.Constantes;
import java.io.PrintWriter;


public class TipoExamenServlet extends HttpServlet {

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
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamen",listaTipoExamen);
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenMant.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3:{
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    int codigo=objTipoExamenDAO.GenerarCodigoTipoExamen();
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");

                    TipoExamenBean objTipoExamenBean=new TipoExamenBean();
                                        objTipoExamenBean.setCODTIPEXAMEN(codigo);
                                        objTipoExamenBean.setNOMBTIPEXAMEN(nombre);
                                        objTipoExamenBean.setESTADO("A");
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    int valido=objTipoExamenDAO.InsertarTipoExamen(objTipoExamenBean);

                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objTipoExamenDAO.GenerarCodigoTipoExamen();
                    }else mensaje="Registro no Insertado !!!";

                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5:{
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamen",listaTipoExamen);
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenMant.jsp").forward(request, response);
                    break;
                }
                case 6:{
                    String  codcad=request.getParameter("COD");
                    int     codigo=Integer.parseInt(codcad);                    
                    TipoExamenBean objTipoExamenBean=new TipoExamenBean();
                                        objTipoExamenBean.setCODTIPEXAMEN(codigo);
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();
                    objTipoExamenBean=objTipoExamenDAO.TraerTurno(objTipoExamenBean);
                    request.setAttribute("datos",objTipoExamenBean);

                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenModificarMant.jsp").forward(request, response);
                    break;
                }           
                case 7:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");
                    String  estado=request.getParameter("cboestado");
                    TipoExamenBean objTipoExamenBean=new TipoExamenBean();
                                        objTipoExamenBean.setCODTIPEXAMEN(codigo);
                                        objTipoExamenBean.setNOMBTIPEXAMEN(nombre);
                                        objTipoExamenBean.setESTADO(estado);
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();

                    int valido=objTipoExamenDAO.ModificarTipoExamen(objTipoExamenBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";

                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objTipoExamenBean);   
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8:{ 
                    String  codcad=request.getParameter("COD");                
                    int     codigo=Integer.parseInt(codcad);
                    TipoExamenBean objTipoExamenBean=new TipoExamenBean();
                                        objTipoExamenBean.setCODTIPEXAMEN(codigo);
                    TipoExamenDAO  objTipoExamenDAO=new TipoExamenDAO();              
                    objTipoExamenDAO.EliminarTipoExamen(objTipoExamenBean);  

                    ArrayList  listaTipoExamen=objTipoExamenDAO.ListarTipoExamen();
                    request.setAttribute("listaTipoExamen",listaTipoExamen);
                    getServletContext().getRequestDispatcher("/Entidades/TipoExamen/FrmTipoExamenMant.jsp").forward(request, response);
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
