/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import BEAN.*;
import DAO.*;
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

/**
 *
 * @author USUARIO
 */
public class MatriculaServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();;

        try {
            try {
                session = request.getSession();
            } catch (Exception e) {
                out.println("Error en session");
                out.println(e);
                out.println(e.getLocalizedMessage());
                out.println(e.getMessage());
                out.println(e.getStackTrace());
                throw new Exception(e);
            }

            if (session == null) {
                out.println("No hay session");

            } else if (session.getAttribute("SESION") == null) {
                out.println("1");
            } else {
                String opcad = request.getParameter("op");
                int op = Integer.parseInt(opcad);
                switch (op) {
                    case 1: {

                        ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                        ArrayList<SemestreBean> listaSemestre;
                        ArrayList<MatriculaBean> listaMatricula;

                        CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                        SemestreDAO objSemestreDAO = new SemestreDAO();
                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        try {
                            listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                        } catch (Exception e) {
                            out.println("Error en ListarCarreraProfesional");
                            out.println(e);
                            out.println(e.getLocalizedMessage());
                            out.println(e.getMessage());
                            out.println(e.getStackTrace());
                            throw new Exception(e);
                        }

                        try {
                            listaSemestre = objSemestreDAO.ListarSemestre();
                        } catch (Exception e) {
                            out.println("Error en ListarSemestre");
                            out.println(e);
                            out.println(e.getLocalizedMessage());
                            out.println(e.getMessage());
                            out.println(e.getStackTrace());
                            throw new Exception(e);
                        }

                        try {
                            listaMatricula = objMatriculaDAO.ListarMatriculas(new MatriculaBean());

                        } catch (Exception e) {
                            out.println("Error en ListarMatriculas");
                            out.println(e);
                            out.println(e.getLocalizedMessage());
                            out.println(e.getMessage());
                            out.println(e.getStackTrace());
                            throw new Exception(e);
                        }
                        try {
                            request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                            request.setAttribute("listaSemestre", listaSemestre);
                            request.setAttribute("listaMatricula", listaMatricula);
                        } catch (Exception e) {
                            out.println("Error en setAttribute");
                            out.println(e);
                            out.println(e.getLocalizedMessage());
                            out.println(e.getMessage());
                            out.println(e.getStackTrace());
                            throw new Exception(e);
                        }
                        getServletContext().getRequestDispatcher("/Entidades/Matricula/FrmMatriculaMant.jsp").forward(request, response);
                        break;
                    }
                    case 2: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("MatriculaBean"), MatriculaBean.class);
                        ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                        ArrayList<SemestreBean> listaSemestre;
                        ArrayList<AlumnoBean> listaAlumno;
                        ArrayList<ProgramacionMateriaBean> listaProgramacionMateria = new ArrayList<ProgramacionMateriaBean>();

                        CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                        SemestreDAO objSemestreDAO = new SemestreDAO();

                        listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                        listaSemestre = objSemestreDAO.ListarSemestre();

                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        vl_MatriculaBean = objMatriculaDAO.getMatricula(vl_MatriculaBean);

                        if (vl_MatriculaBean.getCODMATRICULA() != 0) {
                            listaProgramacionMateria = objMatriculaDAO.getDetalleMatricula(vl_MatriculaBean);
                        }

                        AlumnoDAO objAlumnoDAO = new AlumnoDAO();
                        listaAlumno = objAlumnoDAO.ListarAlumno();

                        request.setAttribute("listaProgramacionMateria", listaProgramacionMateria);
                        request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                        request.setAttribute("listaSemestre", listaSemestre);
                        request.setAttribute("listaAlumno", listaAlumno);
                        request.setAttribute("objMatriculaBean", vl_MatriculaBean);

                        getServletContext().getRequestDispatcher("/Entidades/Matricula/FrmModalMatricula.jsp").forward(request, response);
                    }
                    case 3: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);

                        ArrayList<CarreraProfesionalBean> ListaCarrera = new ArrayList<CarreraProfesionalBean>();
                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        ListaCarrera = objMatriculaDAO.ListarCarreraMatriculas(vl_MatriculaBean);

                        out.println("<select  name=\"cbocarrera1\" id=\"cbocarrera1\" >");
                        out.println("<option value=\"0\" selected>-Seleccional Carrera-</option>");
                        for (CarreraProfesionalBean obj : ListaCarrera) {
                            out.println("<option value=\"" + obj.getCODCARRERA() + "\">" + obj.getNOMBCARRERA() + "</option>");
                        }
                        out.println("</select>");
                        break;
                    }
                    case 4: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);

                        ArrayList<MateriaBean> ListaMateriaBean = new ArrayList<MateriaBean>();
                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        ListaMateriaBean = objMatriculaDAO.ListarMateriasMatriculas(vl_MatriculaBean);

                        out.println("<select  name=\"cboMateria\" id=\"cboMateria\"  onchange=\"FiltrarDocentesMatricula('" + request.getContextPath() + "')\">");
                        out.println("<option value=\"0\" selected>-Seleccionar Materia-</option>");
                        for (MateriaBean obj : ListaMateriaBean) {
                            out.println("<option value=\"" + obj.getCODMATERIA() + "\">" + obj.getNOMBMATERIA() + "</option>");
                        }
                        out.println("</select>");
                        break;
                    }
                    case 5: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);

                        ArrayList<DocenteBean> ListaDocenteBean = new ArrayList<DocenteBean>();
                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        ListaDocenteBean = objMatriculaDAO.ListarDocenteMatriculas(vl_MatriculaBean);

                        out.println("<select  name=\"cboDocente\" id=\"cboDocente\">");
                        out.println("<option value=\"0\" selected>-Seleccionar Docente-</option>");
                        for (DocenteBean obj : ListaDocenteBean) {
                            out.println("<option value=\"" + obj.getCODDOCENTE() + "\">" + obj.getNOMBDOCENTE() + "</option>");
                        }
                        out.println("</select>");
                        break;
                    }
                    case 6: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);
                        java.lang.reflect.Type ListaProgramacionMateriaBeanType = new TypeToken<Collection<ProgramacionMateriaBean>>() {
                        }.getType();
                        Collection<ProgramacionMateriaBean> ListaProgramacionMateriaBean = new Gson().fromJson(request.getParameter("ListaProgramacionMateriaBean"), ListaProgramacionMateriaBeanType);

                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();

                        int estado = objMatriculaDAO.InsertarMatricula(vl_MatriculaBean);
                        if (estado == 1) {
                            objMatriculaDAO.InsertarDetalleMatricula(ListaProgramacionMateriaBean, vl_MatriculaBean);
                        }
                        break;
                    }
                    case 7: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);
                        java.lang.reflect.Type ListaProgramacionMateriaBeanType = new TypeToken<Collection<ProgramacionMateriaBean>>() {
                        }.getType();
                        Collection<ProgramacionMateriaBean> ListaProgramacionMateriaBean = new Gson().fromJson(request.getParameter("ListaProgramacionMateriaBean"), ListaProgramacionMateriaBeanType);

                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();
                        objMatriculaDAO.ModificarDetalleMatricula(ListaProgramacionMateriaBean, vl_MatriculaBean);
                        break;
                    }
                    case 8: {
                        MatriculaBean vl_MatriculaBean = new Gson().fromJson(request.getParameter("objMatriculaBean"), MatriculaBean.class);
                        MatriculaDAO objMatriculaDAO = new MatriculaDAO();
                        ArrayList<MatriculaBean> listaMatricula;

                        listaMatricula = objMatriculaDAO.ListarMatriculas(new MatriculaBean());

                        out.println("<table id=\"listado\" class=\"display\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
                        out.println("                        <thead>");
                        out.println("                            <tr>");
                        out.println("                                <th data-visible=\"false\">Codigo</th>");
                        out.println("                                <th>Carrera</th>");
                        out.println("                                <th>Semestre</th>");
                        out.println("                                <th>Alumno</th>");
                        out.println("                                <th>Fecha Matricula</th>");
                        out.println("                                <th>Modificar</th>");
                        out.println("                                <th>Eliminar</th>");
                        out.println("                            </tr>");
                        out.println("                        </thead>");
                        out.println("                        <tfoot>");
                        out.println("                            <tr>");
                        out.println("                                <th>Codigo</th>");
                        out.println("                                <th>Carrera</th>");
                        out.println("                                <th>Semestre</th>");
                        out.println("                                <th>Alumno</th>");
                        out.println("                                <th>Fecha Matricula</th>");
                        out.println("                                <th>Modificar</th>");
                        out.println("                                <th>Eliminar</th>");
                        out.println("                            </tr>");
                        out.println("                        </tfoot>");
                        out.println("                        <tbody>");
                        for (MatriculaBean obj : listaMatricula) {
                            out.println("                            <tr>");
                            out.println("                                <td>" + obj.getCODMATRICULA() + "</td>");
                            out.println("                                <td>" + obj.getNOMBRECARRERAPROFECIONAL() + "</td>");
                            out.println("                                <td>" + obj.getNOMBRESEMESTRE() + "</td>");
                            out.println("                                <td>" + obj.getNOMBREALUMNO() + "</td>");
                            out.println("                                <td>" + obj.getFECHAMATRICULA() + "</td>");
                            out.println("                                <td>");
                            out.println("                        <center>");
                            out.println("                            <input  type=\"button\" value=\"Modificar\"  onclick=\"nuevaMatricula('" + request.getContextPath() + "', '" + obj.getCODMATRICULA() + "')\"   style=\"height:20px;width:80px;\">");
                            out.println("                        </center>");
                            out.println("                        </td>");
                            out.println("                        <td>");
                            out.println("                        <center>");
                            out.println("                            <input  type=\"button\" value=\"Eliminar\"  onclick=\"eliminar('" + request.getContextPath() + "', 'Materia', 8, '')\"   style=\"height:20px;width:80px;\">");
                            out.println("                        </center>");
                            out.println("                        </td>");
                            out.println("                        </tr>");
                        }
                            out.println("                        </tbody>");
                            out.println("                    </table>");
                            break;
                        }
                    }
                }
            } catch (Exception e) {
            out.println(e);
            out.println(e.getLocalizedMessage());
            out.println(e.getMessage());
            out.println(e.getStackTrace());
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
