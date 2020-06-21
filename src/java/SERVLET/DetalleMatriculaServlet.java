/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;


import BEAN.DetalleMatriculaBean;
import BEAN.MatriculaBean;
import DAO.DetalleMatriculaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DetalleMatriculaServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
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
                                     String  codsemestrecad=request.getParameter("CODSEMESTRE");
                                     int     codsemestre=Integer.parseInt(codsemestrecad); 
                                     String  codalucad=request.getParameter("CODALU");
                                     int     codalu=Integer.parseInt(codalucad); 
                                     
                                     MatriculaBean   objMatriculaBean=new MatriculaBean();
                                                  objMatriculaBean.setCODSEMESTRE(codsemestre);
                                                  objMatriculaBean.setCODALU(codalu);
                                     DetalleMatriculaDAO  objDetalleMatriculaDAO=new DetalleMatriculaDAO();         
                                     ArrayList<DetalleMatriculaBean>  listadetallematriculados=objDetalleMatriculaDAO.ListarCursosMatriculadosxProgramacionExamenes(objMatriculaBean);
                                     request.setAttribute("listacursosprogramados",listadetallematriculados);
                                     getServletContext().getRequestDispatcher("/AplicacionExamen/RendirExamen/FrmListarCursosMatriculados.jsp").forward(request, response);
                            break;
                        }    
                        case 2 :{
                                String  codsemestrecad=request.getParameter("CODSEMESTRE");
                                     int     codsemestre=Integer.parseInt(codsemestrecad); 
                                     String  codalucad=request.getParameter("CODALU");
                                     int     codalu=Integer.parseInt(codalucad); 
                                     
                                     MatriculaBean   objMatriculaBean=new MatriculaBean();
                                                  objMatriculaBean.setCODSEMESTRE(codsemestre);
                                                  objMatriculaBean.setCODALU(codalu);
                                     DetalleMatriculaDAO  objDetalleMatriculaDAO=new DetalleMatriculaDAO();         
                                     ArrayList<DetalleMatriculaBean>  listadetallematriculados=objDetalleMatriculaDAO.ListarCursosMatriculadosxProgramacionExamenes(objMatriculaBean);
                                     request.setAttribute("listacursosprogramados",listadetallematriculados);
                                     getServletContext().getRequestDispatcher("/AplicacionExamen/ResultadoExamen/FrmListarCursosMatriculados.jsp").forward(request, response);    
                            break;
                        }             
                                 
                                 
                } 
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
