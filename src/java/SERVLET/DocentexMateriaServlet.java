package SERVLET;

import BEAN.DocenteBean;
import BEAN.DocentexMateriaBean;
import BEAN.EstructuraExamenBean;
import BEAN.MateriaBean;
import DAO.CarreraProfesionalDAO;
import DAO.DocenteDAO;
import DAO.DocentexMateriaDAO;
import DAO.MateriaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DocentexMateriaServlet extends HttpServlet {

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
                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();
                    ArrayList ListarDocentexMateria = objDocentexMateriaDAO.ListarDocentexMateria();
                    request.setAttribute("ListaDocentexMateria", ListarDocentexMateria);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 2: {
                    getServletContext().getRequestDispatcher("/BancoPreguntas/FrmMenuProceso.jsp").forward(request, response);
                    break;
                }
                case 3: {
                    DocentexMateriaBean vl_DocentexMateriaBean = new Gson().fromJson(request.getParameter("DocentexMateriaBean"), DocentexMateriaBean.class);

                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();

                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList ListaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional", ListaCarreraProfesional);

                    DocentexMateriaBean objDocentexMateriaBean = new DocentexMateriaBean();
                    objDocentexMateriaBean = objDocentexMateriaDAO.getDocentexMateria(vl_DocentexMateriaBean);
                    request.setAttribute("objDocentexMateriaBean", objDocentexMateriaBean);
                    /* MateriaDAO  objMateriaDAO=new MateriaDAO();
                     ArrayList  listaMateria=objMateriaDAO.ListarMateria();
                     request.setAttribute("listaMateria",listaMateria);*/

                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList listaDocente = objDocenteDAO.ListarDocente();
                    request.setAttribute("listaDocenteBean", listaDocente);

                    getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmModalRegistrarDocentexMateria.jsp").forward(request, response);
                    break;
                }
                case 4: {
                    String mensaje = "";
                    DocentexMateriaBean vl_DocentexMateriaBean = new Gson().fromJson(request.getParameter("objDocentexMateriaBean"), DocentexMateriaBean.class);
                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();
                    int estado = objDocentexMateriaDAO.InsertarDocentexMateria(vl_DocentexMateriaBean);
                    if (estado == 1) {
                        mensaje = "Registro Insertado !!!";
                    } else {
                        mensaje = "Registro no Insertado !!!";
                    }

                    //   getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5: {
                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();
                    ArrayList ListarDocentexMateria = objDocentexMateriaDAO.ListarDocentexMateria();
                    request.setAttribute("ListaDocentexMateria", ListarDocentexMateria);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 6: {
                    String codcad = request.getParameter("cod");
                    String carrcad = request.getParameter("carr");
                    String matcad = request.getParameter("mat");
                    String doccad = request.getParameter("doc");
                    int cod = Integer.parseInt(codcad);
                    int carr = Integer.parseInt(carrcad);
                    int mat = Integer.parseInt(matcad);
                    int doc = Integer.parseInt(doccad);

                    String nombcarr = request.getParameter("nombcarr");
                    String nombmat = request.getParameter("nombmat");
                    String nombdoc = request.getParameter("nombdoc");

                    DocentexMateriaBean objDocentexMateriaBean = new DocentexMateriaBean();
                    objDocentexMateriaBean.setCODDOCENXMATERIA(cod);
                    objDocentexMateriaBean.setCODCARRERA(carr);
                    objDocentexMateriaBean.setCODMATERIA(mat);
                    objDocentexMateriaBean.setCODDOCENTE(doc);
                    objDocentexMateriaBean.setNOMBCARRERA(nombcarr);
                    objDocentexMateriaBean.setNOMBMATERIA(nombmat);
                    objDocentexMateriaBean.setNOMBDOCENTE(nombdoc);

                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList ListaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional", ListaCarreraProfesional);

                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList listaMateria = objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria", listaMateria);

                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList listaDocente = objDocenteDAO.ListarDocente();
                    request.setAttribute("listaDocente", listaDocente);

                    request.setAttribute("datos", objDocentexMateriaBean);

                    getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaModificarMant.jsp").forward(request, response);
                    break;
                }
                case 7: {
                    String mensaje = "";
                    DocentexMateriaBean vl_DocentexMateriaBean = new Gson().fromJson(request.getParameter("objDocentexMateriaBean"), DocentexMateriaBean.class);

                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();

                    int estado = objDocentexMateriaDAO.ModificarDocentexMateria(vl_DocentexMateriaBean);
                    if (estado == 1) {
                        mensaje = "Registro Modificado !!!";
                    } else {
                        mensaje = "Registro no Modificado !!!";
                    }

                    request.setAttribute("mensaje", mensaje);

                    /*   CarreraProfesionalDAO  objCarreraProfesionalDAO=new CarreraProfesionalDAO();
                     ArrayList  ListaCarreraProfesional=objCarreraProfesionalDAO.ListarCarreraProfesional();
                     request.setAttribute("listaCarreraProfesional",ListaCarreraProfesional);

                     MateriaDAO  objMateriaDAO=new MateriaDAO();
                     ArrayList  listaMateria=objMateriaDAO.ListarMateria();
                     request.setAttribute("listaMateria",listaMateria);

                     DocenteDAO  objDocenteDAO=new DocenteDAO();
                     ArrayList  listaDocente=objDocenteDAO.ListarDocente();
                     request.setAttribute("listaDocente",listaDocente);

                     request.setAttribute("datos",vl_DocentexMateriaBean);   
                     getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaModificarMant.jsp").forward(request, response);*/
                    break;
                }
                case 8: {
                    String codcad = request.getParameter("cod");
                    String carrcad = request.getParameter("carr");
                    String matcad = request.getParameter("mat");
                    String doccad = request.getParameter("doc");
                    int cod = Integer.parseInt(codcad);
                    int carr = Integer.parseInt(carrcad);
                    int mat = Integer.parseInt(matcad);
                    int doc = Integer.parseInt(doccad);
                    DocentexMateriaBean objDocentexMateriaBean = new DocentexMateriaBean();
                    objDocentexMateriaBean.setCODDOCENXMATERIA(cod);
                    objDocentexMateriaBean.setCODCARRERA(carr);
                    objDocentexMateriaBean.setCODMATERIA(mat);
                    objDocentexMateriaBean.setCODDOCENTE(doc);

                    DocentexMateriaDAO objDocentexMateriaDAO = new DocentexMateriaDAO();
                    objDocentexMateriaDAO.EliminarDocentexMateria(objDocentexMateriaBean);

                    ArrayList listaDocentexMateria = objDocentexMateriaDAO.ListarDocentexMateria();
                    request.setAttribute("listaDocentexMateria", listaDocentexMateria);
                    getServletContext().getRequestDispatcher("/BancoPreguntas/DocentexMateria/FrmDocentexMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 9: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("carr");
                    int carrera = Integer.parseInt(CODCAR);
                    String CODMAT = request.getParameter("mat");
                    int materia = Integer.parseInt(CODMAT);

                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    out9.println("<select name='cbomateria' onchange='cargarDocente(this.value, 0)'>");
                    out9.println("<option value='0'>-Seleccionar Materia-</option>");
                    for (MateriaBean obj : listamateria) {
                        if (obj.getCODMATERIA() == materia) {
                            out9.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                        } else {
                            out9.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
                        }
                    }
                    out9.println("</select>");
                    break;
                }
                case 10: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();

                    String CODDOC = request.getParameter("doc");
                    int docente = Integer.parseInt(CODDOC);

                    DocenteDAO objDocenteDAO = new DocenteDAO();
                    ArrayList<DocenteBean> listadocente = objDocenteDAO.ListarDocente();

                    out9.println("<select name='cbodocente'>");
                    out9.println("<option value='0'>-Seleccionar Docente-</option>");
                    for (DocenteBean obj : listadocente) {
                        if (obj.getCODDOCENTE() == docente) {
                            out9.println("<option value='" + obj.getCODDOCENTE() + "' selected>" + obj.getNOMBDOCENTE() + "</option>");
                        } else {
                            out9.println("<option value='" + obj.getCODDOCENTE() + "' >" + obj.getNOMBDOCENTE() + "</option>");
                        }
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
