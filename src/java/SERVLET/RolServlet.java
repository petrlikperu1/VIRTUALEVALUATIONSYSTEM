package SERVLET;

import BEAN.RolBean;
import DAO.RolDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;


public class RolServlet extends HttpServlet {

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
                RolDAO  objRolDAO=new RolDAO();
                ArrayList  listaRol=objRolDAO.ListarRol();
                request.setAttribute("listaRol",listaRol);
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolMant.jsp").forward(request, response);
                break;
            }
            case 2:{
                getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                break;
            }
            case 3:{
                RolDAO  objRolDAO=new RolDAO();
                int codigo=objRolDAO.GenerarCodigoRol();
                request.setAttribute("codigogenerado",""+codigo);
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolRegistrarMant.jsp").forward(request, response);
                break;
            }
            case 4:{
                String  mensaje="";
                String  codcad=request.getParameter("hddcodigo");
                int     codigo=Integer.parseInt(codcad);
                String  nombre=request.getParameter("txtnombre");
                
                RolBean objRolBean=new RolBean();
                        objRolBean.setCODROL(codigo);
                        objRolBean.setNOMBROL(nombre);
                        objRolBean.setESTADO("A");
                RolDAO  objRolDAO=new RolDAO();
                int valido=objRolDAO.InsertarRol(objRolBean);
                
                if(valido==1){
                    mensaje="Registro Insertado !!!";
                    codigo=objRolDAO.GenerarCodigoRol();
                }else mensaje="Registro no Insertado !!!";
                
                request.setAttribute("mensaje",mensaje);
                request.setAttribute("codigogenerado",""+codigo);
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolRegistrarMant.jsp").forward(request, response);
                break;
            }
            case 5:{
                RolDAO  objRolDAO=new RolDAO();
                ArrayList  listaRol=objRolDAO.ListarRol();
                request.setAttribute("listaRol",listaRol);
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolMant.jsp").forward(request, response);
                break;
            }
            case 6:{
                String  codcad=request.getParameter("COD");
                int     codigo=Integer.parseInt(codcad);
                String  nombre=request.getParameter("NOM");
                String  estado=request.getParameter("ESTADO");
                RolBean objRolBean=new RolBean();
                        objRolBean.setCODROL(codigo);
                RolDAO  objRolDAO=new RolDAO();
                    objRolBean=objRolDAO.TraerRol(objRolBean);
                    request.setAttribute("datos",objRolBean);
                
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolModificarMant.jsp").forward(request, response);
                break;
            }           
            case 7:{
                String  mensaje="";
                String  codcad=request.getParameter("hddcodigo");
                int     codigo=Integer.parseInt(codcad);
                String  nombre=request.getParameter("txtnombre");
                String  estado=request.getParameter("cboestado");
                RolBean objRolBean=new RolBean();
                                    objRolBean.setCODROL(codigo);
                                    objRolBean.setNOMBROL(nombre);
                                    objRolBean.setESTADO(estado);
                RolDAO  objRolDAO=new RolDAO();
                
                int valido=objRolDAO.ModificarRol(objRolBean);
                if(valido==1) mensaje="Registro Modificado !!!";
                else mensaje="Registro no Modificado !!!";
                
                request.setAttribute("mensaje",mensaje); 
                request.setAttribute("datos",objRolBean);   
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolModificarMant.jsp").forward(request, response);
                break;
            }   
            case 8:{   
                String  codcad=request.getParameter("COD");                
                int     codigo=Integer.parseInt(codcad);
                RolBean objRolBean=new RolBean();
                        objRolBean.setCODROL(codigo);
                RolDAO  objRolDAO=new RolDAO();              
                objRolDAO.EliminarRol(objRolBean);  
                  
                ArrayList  listaRol=objRolDAO.ListarRol();
                request.setAttribute("listaRol",listaRol);
                getServletContext().getRequestDispatcher("/Entidades/Rol/FrmRolMant.jsp").forward(request, response);
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
