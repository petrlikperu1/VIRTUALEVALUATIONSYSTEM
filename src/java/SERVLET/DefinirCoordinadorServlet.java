package SERVLET;

import BEAN.MateriaBean;
import BEAN.RolxDocenteBean;
import BEAN.DocentexMateriaBean;
import BEAN.DocenteBean;
import DAO.CarreraProfesionalDAO;
import DAO.DocenteDAO;
import DAO.MateriaDAO;
import DAO.RolxdocenteDAO;
import DAO.DocentexMateriaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DefinirCoordinadorServlet extends HttpServlet {

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
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList listaDocente = objDocenteDAO.ListarDocente();
                    RolxdocenteDAO objRolxdocenteDAO = new RolxdocenteDAO();
                    ArrayList listaRolxdocente = objRolxdocenteDAO.ListarRolxdocente(2);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaDocente", listaDocente);
                    request.setAttribute("listaRolxdocente", listaRolxdocente);
                    getServletContext().getRequestDispatcher("/Entidades/DefinirCoordinador/FrmDefinirCoordinador.jsp").forward(request, response);
                    break;
                }
                case 2: {
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out3 = response.getWriter();
                    String codcar = request.getParameter("codcar");
                    int carrera = Integer.parseInt(codcar);
                    String codmat = request.getParameter("codmat");
                    int materia = Integer.parseInt(codmat);

                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    out3.println("<select name='cbomateria' onchange='cargarDocente(this.value,0)'>");
                    if (carrera == 0 && materia == 0) {
                        out3.println("<option value='0'>---------------------</option>");
                    } else {
                        out3.println("<option value='0'>-Seleccionar Materia-</option>");
                        for (MateriaBean obj : listamateria) {
                            if (obj.getCODMATERIA() == materia) {
                                out3.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                            } else {
                                out3.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
                            }
                        }
                    }
                    out3.println("</select>");
                    break;
                }
                case 4: {
                    String mensaje = "";
                    RolxdocenteDAO objRolxdocenteDAO = new RolxdocenteDAO();
                    int codigo = objRolxdocenteDAO.GenerarCodigo();
                    String scoddoc = request.getParameter("cbodocente");
                    int coddoc = Integer.parseInt(scoddoc);
                    String scodcar = request.getParameter("cbocarrera");
                    int codcar = Integer.parseInt(scodcar);
                    String scodmat = request.getParameter("cbomateria");
                    int codmat = Integer.parseInt(scodmat);
                    RolxDocenteBean objRolxdocenteBean = new RolxDocenteBean();
                    objRolxdocenteBean.setCODROLXDOCENTE(codigo);
                    objRolxdocenteBean.setCODDOCENTE(coddoc);
                    objRolxdocenteBean.setCODROL(2);
                    objRolxdocenteBean.setNOMBROLXDOCENTE("Coordinador");
                    objRolxdocenteBean.setCODCARRERA(codcar);
                    objRolxdocenteBean.setCODMATERIA(codmat);
                    int valido = objRolxdocenteDAO.InsertarRolxdocente(objRolxdocenteBean);
                    if (valido == 1) {
                        mensaje = "Registro Insertado !!!";
                    } else {
                        mensaje = "Registro no Insertado !!!";
                    }

                     CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                      
                     ArrayList listaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                     DocenteDAO objDocenteDAO=new DocenteDAO();
                     ArrayList listaDocente=objDocenteDAO.ListarDocente();
                     ArrayList listaRolxdocente=objRolxdocenteDAO.ListarRolxdocente(2);
                     request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                     request.setAttribute("listaDocente", listaDocente);
                     request.setAttribute("listaRolxdocente", listaRolxdocente);
                     request.setAttribute("mensaje",mensaje);
                     getServletContext().getRequestDispatcher("/Entidades/DefinirCoordinador/FrmDefinirCoordinador.jsp").forward(request, response);
                    break;
                }
                case 5: {
                    String mensaje = "";
                    String scodigo = request.getParameter("hddcodigo");
                    int codigo = Integer.parseInt(scodigo);
                    String scoddoc = request.getParameter("cbodocente");
                    int coddoc = Integer.parseInt(scoddoc);
                    String scodcar = request.getParameter("cbocarrera");
                    int codcar = Integer.parseInt(scodcar);
                    String scodmat = request.getParameter("cbomateria");
                    int codmat = Integer.parseInt(scodmat);
                    RolxDocenteBean objRolxdocenteBean = new RolxDocenteBean();
                    objRolxdocenteBean.setCODROLXDOCENTE(codigo);
                    objRolxdocenteBean.setCODDOCENTE(coddoc);
                    objRolxdocenteBean.setCODROL(2);
                    objRolxdocenteBean.setNOMBROLXDOCENTE("Coordinador");
                    objRolxdocenteBean.setCODCARRERA(codcar);
                    objRolxdocenteBean.setCODMATERIA(codmat);
                    RolxdocenteDAO objRolxdocenteDAO = new RolxdocenteDAO();
                    int valido = objRolxdocenteDAO.ModificarRolxdocente(objRolxdocenteBean);
                    if (valido == 1) {
                        mensaje = "Registro Modificado !!!";
                    } else {
                        mensaje = "Registro no Modificado !!!";
                    }
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList listaDocente = objDocenteDAO.ListarDocente();
                    ArrayList listaRolxdocente = objRolxdocenteDAO.ListarRolxdocente(2);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaDocente", listaDocente);
                    request.setAttribute("listaRolxdocente", listaRolxdocente);
                    request.setAttribute("mensaje", mensaje);
                    getServletContext().getRequestDispatcher("/Entidades/DefinirCoordinador/FrmDefinirCoordinador.jsp").forward(request, response);
                    break;
                }
                case 6: {
                    String scodigo = request.getParameter("hddcodigo");
                    int codigo = Integer.parseInt(scodigo);
                    RolxDocenteBean objRolxdocenteBean = new RolxDocenteBean();
                    objRolxdocenteBean.setCODROLXDOCENTE(codigo);
                    RolxdocenteDAO objRolxdocenteDAO = new RolxdocenteDAO();
                    objRolxdocenteDAO.EliminarRolxdocente(objRolxdocenteBean);
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList listaDocente = objDocenteDAO.ListarDocente();
                    ArrayList listaRolxdocente = objRolxdocenteDAO.ListarRolxdocente(2);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaDocente", listaDocente);
                    request.setAttribute("listaRolxdocente", listaRolxdocente);
                    getServletContext().getRequestDispatcher("/Entidades/DefinirCoordinador/FrmDefinirCoordinador.jsp").forward(request, response);
                    break;
                }
                case 7: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out7 = response.getWriter();
                    String codcar = request.getParameter("codcar");
                    int carrera = Integer.parseInt(codcar);
                    String codmat = request.getParameter("codmat");
                    int materia = Integer.parseInt(codmat);
                    String coddoc = request.getParameter("coddoc");
                    int docente = Integer.parseInt(coddoc);

                    DocentexMateriaBean objDocentexMateriaBean = new DocentexMateriaBean();
                    objDocentexMateriaBean.setCODCARRERA(carrera);
                    objDocentexMateriaBean.setCODMATERIA(materia);
                    objDocentexMateriaBean.setCODDOCENTE(docente);
                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();
                    ArrayList<DocenteBean> listadocente = objDocentexMateriaDAO.TraerDocentexMateria(objDocentexMateriaBean);

                    out7.println("<select name='cbodocente' id='cbodocente'>");
                    if (carrera == 0 && materia == 0 && docente == 0) {
                        out7.println("<option value='0'>---------------------</option>");
                    } else {
                        out7.println("<option value='0'>-Seleccionar Docente-</option>");

                        for (DocenteBean obj : listadocente) {
                            String NombreCompleto = obj.getNOMBDOCENTE() + ", " + obj.getAPEPATERDOCENTE() + " " + obj.getAPEMATERDOCENTE();
                            if (obj.getCODDOCENTE() == docente) {
                                out7.println("<option value='" + obj.getCODDOCENTE() + "' selected>" + NombreCompleto + "</option>");
                            } else {
                                out7.println("<option value='" + obj.getCODDOCENTE() + "' >" + NombreCompleto + "</option>");
                            }
                        }
                    }
                    out7.println("</select>");
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
    }// </editor-fold>
}
