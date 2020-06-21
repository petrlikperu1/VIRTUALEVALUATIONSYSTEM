/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import BEAN.CarreraProfesionalBean;
import DAO.CarreraProfesionalDAO;

public class CarreraProfesionalServlet extends HttpServlet {

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
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  ListaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                 
                    
                    request.setAttribute("listaCarreraProfesional",ListaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalMant.jsp").forward(request, response);
                    break;
                }
                case 2:{
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3:{
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    int codigo=objCarreraProfesionalDAO.GenerarCodigoCarreraProfesional();
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4:{
                    String  mensaje;
                    String  codcad=request.getParameter("txtcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");

                    CarreraProfesionalBean objCarreraProfesionalBean=new CarreraProfesionalBean();
                                        objCarreraProfesionalBean.setCODCARRERA(codigo);
                                        objCarreraProfesionalBean.setNOMBCARRERA(nombre);
                                        objCarreraProfesionalBean.setESTADO("A");
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    int valido=objCarreraProfesionalDAO.InsertarCarreraProfesional(objCarreraProfesionalBean);

                    if(valido==1){
                        mensaje="Registro Insertado !!!";
                        codigo=objCarreraProfesionalDAO.GenerarCodigoCarreraProfesional();
                    }else
                     mensaje="Registro no Insertado !!!";

                    request.setAttribute("mensaje",mensaje);
                    request.setAttribute("codigogenerado",""+codigo);
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5:{
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalMant.jsp").forward(request, response);
                    break;
                }
                case 6:{
                    String  codcad=request.getParameter("COD");
                    int     codigo=Integer.parseInt(codcad);
                    CarreraProfesionalDAO   objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    CarreraProfesionalBean objCarreraProfesionalBean=objCarreraProfesionalDAO.TraerCarreraProfesional(codigo);
                    request.setAttribute("datos",objCarreraProfesionalBean);
                    
                    
                    
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalModificarMant.jsp").forward(request, response);
                    break;
                }           
                case 7:{
                    String  mensaje;
                    String  codcad=request.getParameter("txtcodigo");
                    int     codigo=Integer.parseInt(codcad);
                    String  nombre=request.getParameter("txtnombre");
                    String  estado=request.getParameter("cboestado");
                    CarreraProfesionalBean objCarreraProfesionalBean=new CarreraProfesionalBean();
                                           objCarreraProfesionalBean.setCODCARRERA(codigo);
                                           objCarreraProfesionalBean.setNOMBCARRERA(nombre);
                                           objCarreraProfesionalBean.setESTADO(estado);
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                    int valido=objCarreraProfesionalDAO.ModificarCarreraProfesional(objCarreraProfesionalBean);
                    if(valido==1) mensaje="Registro Modificado !!!";
                    else mensaje="Registro no Modificado !!!";
                    request.setAttribute("mensaje",mensaje); 
                    request.setAttribute("datos",objCarreraProfesionalBean);   
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalModificarMant.jsp").forward(request, response);
                    break;
                }   
                case 8:{                
                    String  codcad=request.getParameter("COD");                
                    int     codigo=Integer.parseInt(codcad);
                    CarreraProfesionalBean objCarreraProfesionalBean=new CarreraProfesionalBean();
                                        objCarreraProfesionalBean.setCODCARRERA(codigo);
                    CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();              
                    objCarreraProfesionalDAO.EliminarCarreraProfesional(objCarreraProfesionalBean);  
                    ArrayList  listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional",listaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/Entidades/CarreraProfesional/FrmCarreraProfesionalMant.jsp").forward(request, response);
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