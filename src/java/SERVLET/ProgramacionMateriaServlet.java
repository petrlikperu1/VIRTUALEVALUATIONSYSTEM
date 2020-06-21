/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import BEAN.*;
import DAO.*;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USUARIO
 */
public class ProgramacionMateriaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if (session.getAttribute("SESION") == null) {
            out.println("1");
        } else {
            String opcad = request.getParameter("op");
            int op = Integer.parseInt(opcad);
            switch (op) {
                case 1: {
                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                    ArrayList<SemestreBean> listaSemestre;
                    ArrayList<ProgramacionMateriaBean> listaProgramacionMateria;
                    
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    SemestreDAO objSemestreDAO = new SemestreDAO();
                    ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();

                    listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    listaSemestre = objSemestreDAO.MostrarSemestre();
                    listaProgramacionMateria = objProgramacionMateriaDAO.MostrarProgramacionMateria();

                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaSemestre", listaSemestre);
                    request.setAttribute("listaProgramacionMateria", listaProgramacionMateria);

                    getServletContext().getRequestDispatcher("/Entidades/ProgramacionMateria/FrmProgramacionMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 2: {

                    ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("objProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                    ArrayList<ProgramacionMateriaBean> listaProgramacionMateria;
                    ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();

                    listaProgramacionMateria = objProgramacionMateriaDAO.ListarProgramacionMateria(vl_ProgramacionMateriaBean);

                    out.println(" <table id=\"listado\" class=\"display\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
                    out.println("    <thead>");
                    out.println("        <tr>");
                    out.println("            <th data-visible=\"false\">Codigo</th>");
                    out.println("            <th>Carrera</th>");
                    out.println("            <th>Semestre</th>");
                    out.println("            <th>Materia</th>");
                    out.println("            <th>Docente</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Eliminar</th>");
                    out.println("        </tr>");
                    out.println("    </thead>");
                    out.println("    <tfoot>");
                    out.println("        <tr>");
                    out.println("            <th>Codigo</th>");
                    out.println("             <th>Carrera</th>");
                    out.println("            <th>Semestre</th>");
                    out.println("            <th>Materia</th>");
                    out.println("            <th>Docente</th>");
                    out.println("            <th>Modificar</th>");
                    out.println("            <th>Eliminar</th>");
                    out.println("        </tr>");
                    out.println("    </tfoot>");
                    out.println("    <tbody>");

                    for (ProgramacionMateriaBean obj : listaProgramacionMateria) {
                        out.println("        <tr>");
                        out.println("            <td>" + obj.getCODPROGRAMAT() + "</td>");
                        out.println("            <td>" + obj.getNOMBRECARRERA() + "</td>");
                        out.println("            <td>" + obj.getNOMBRESEMESTRE() + "</td>");
                        out.println("            <td>" + obj.getNOMBREMATERIA() + "</td>");
                        out.println("            <td>" + obj.getNOMBREDOCENTE() + "</td>");
                        out.println("            <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Modificar\"  onclick=\"nuevaProgramacionMateria('"+request.getContextPath()+"','"+obj.getCODPROGRAMAT()+"')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    <td>");
                        out.println("    <center>");
                        out.println("        <input  type=\"button\" value=\"Eliminar\"  onclick=\"eliminar('" + request.getContextPath() + "', 'Materia', 8, '" + request.getContextPath() + "')\"   style=\"height:20px;width:80px;\">");
                        out.println("    </center>");
                        out.println("    </td>");
                        out.println("    </tr>");
                    }

                    out.println("    </tbody>");
                    out.println("</table>");
                    break;
                }
                case 3: {
                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                    ArrayList<SemestreBean> listaSemestre;
                    
                    String  codsemestrecad,cbocarreracad,cbomateriacad;
                    codsemestrecad=request.getParameter("cbosemestre");
                    cbocarreracad=request.getParameter("cbocarrera");
                    cbomateriacad=request.getParameter("cbomateria");
                 
                    ProgramacionMateriaBean    vl_ProgramacionMateriaBean = new ProgramacionMateriaBean();

                    vl_ProgramacionMateriaBean.setCODSEMESTRE(Integer.parseInt(codsemestrecad));
                    vl_ProgramacionMateriaBean.setCODCARRERA(Integer.parseInt(cbocarreracad));
                     vl_ProgramacionMateriaBean.setCODMATERIA(Integer.parseInt(cbomateriacad));
                    
                    
                    
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    SemestreDAO objSemestreDAO = new SemestreDAO();
                    ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();

                    listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    listaSemestre = objSemestreDAO.ListarSemestre();
                    
                    vl_ProgramacionMateriaBean = objProgramacionMateriaDAO.getProgramacionMateria(vl_ProgramacionMateriaBean);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaSemestreBean", listaSemestre);
                    request.setAttribute("objProgramacionMateriaBean", vl_ProgramacionMateriaBean);
                    getServletContext().getRequestDispatcher("/Entidades/ProgramacionMateria/FrmModalRegistrarProgramacionMateria.jsp").forward(request, response);
                    break;
                }
                case 4:{
                    ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("objProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                    ArrayList<DocenteBean> listaDocenteBean = new ArrayList<DocenteBean>();
                    ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();
                    listaDocenteBean = objProgramacionMateriaDAO.ListarDocentesProgramacionMateria(vl_ProgramacionMateriaBean);
                    
                    out.println("<select name=\"cboDocente\" id=\"cboDocente\">" );
                    out.println("   <option value=\"0\" selected>---------------------</option>");
                    for(DocenteBean obj:listaDocenteBean){
                        out.println("   <option value=\""+obj.getCODDOCENTE()+"\" selected>"+obj.getNOMBDOCENTE()+"</option>");
                    }
                    out.println("</select>");
                    break;
                }
                case 5: {
                   ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("objProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                   ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();
                   objProgramacionMateriaDAO.InsertarProgramacionMateria(vl_ProgramacionMateriaBean);
                   break;
                }
                case 6: {
                   ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("objProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                   ProgramacionMateriaDAO objProgramacionMateriaDAO = new ProgramacionMateriaDAO();
                   objProgramacionMateriaDAO.ModificarProgramacionMateria(vl_ProgramacionMateriaBean);
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
