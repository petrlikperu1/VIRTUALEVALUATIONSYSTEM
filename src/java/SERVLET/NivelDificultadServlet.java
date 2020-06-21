package SERVLET;

import BEAN.NivelDificultadBean;
import DAO.NivelDificultadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class NivelDificultadServlet extends HttpServlet {

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
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadMant.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3:{
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    int codigo=objNivelDificultadDAO.GenerarCodigoNivelDificultad();
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");

                    NivelDificultadBean objNivelDificultadBean=new NivelDificultadBean();
                                        objNivelDificultadBean.setCODNIVEL(codigo);
                                        objNivelDificultadBean.setNOMBNIVEL(nombre);
                                        objNivelDificultadBean.setESTADO("A");
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    int valido=objNivelDificultadDAO.InsertarNivelDificultad(objNivelDificultadBean);

                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objNivelDificultadDAO.GenerarCodigoNivelDificultad();
                    }else mensaje="Registro no Insertado !!!";

                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5:{
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadMant.jsp").forward(request, response);
                    break;
                }
                case 6:{
                    String  codcad=request.getParameter("COD");
                    int     codigo=Integer.parseInt(codcad);
                   
                    NivelDificultadBean objNivelDificultadBean=new NivelDificultadBean();
                                        objNivelDificultadBean.setCODNIVEL(codigo);
                                      NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();
                   objNivelDificultadBean=objNivelDificultadDAO.TraerNivelDificultad(objNivelDificultadBean);
                    request.setAttribute("datos",objNivelDificultadBean);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadModificarMant.jsp").forward(request, response);
                    break;
                }           
                case 7:{
                    String  mensaje="";
                    String  codcad=request.getParameter("hddcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");
                    String  estado=request.getParameter("cboestado");
                    NivelDificultadBean objNivelDificultadBean=new NivelDificultadBean();
                                        objNivelDificultadBean.setCODNIVEL(codigo);
                                        objNivelDificultadBean.setNOMBNIVEL(nombre);
                                        objNivelDificultadBean.setESTADO(estado);
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();

                    int valido=objNivelDificultadDAO.ModificarNivelDificultad(objNivelDificultadBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";

                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objNivelDificultadBean);   
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8:{  
                    String  codcad=request.getParameter("COD");                
                    int     codigo=Integer.parseInt(codcad);
                    NivelDificultadBean objNivelDificultadBean=new NivelDificultadBean();
                                        objNivelDificultadBean.setCODNIVEL(codigo);
                    NivelDificultadDAO  objNivelDificultadDAO=new NivelDificultadDAO();              
                    objNivelDificultadDAO.EliminarNivelDificultad(objNivelDificultadBean);  

                    ArrayList  listaNivelDificultad=objNivelDificultadDAO.ListarNivelDificultad();
                    request.setAttribute("listaNivelDificultad",listaNivelDificultad);
                    getServletContext().getRequestDispatcher("/Entidades/NivelDificultad/FrmNivelDificultadMant.jsp").forward(request, response);
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