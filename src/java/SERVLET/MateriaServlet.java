package SERVLET;
import BEAN.MateriaBean;
import DAO.CarreraProfesionalDAO;
import DAO.MateriaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MateriaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out1 = response.getWriter();
        if (session.getAttribute("SESION") == null) {
            out1.println("1");
        } else {
            String opcad = request.getParameter("op");
            int op = Integer.parseInt(opcad);
            switch (op) {
                case 1: {
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList listaMateria = objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria", listaMateria);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 2: {
                    getServletContext().getRequestDispatcher("/Entidades/FrmMenuMant.jsp").forward(request, response);
                    break;
                }
                case 3: {
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    int codigo = objMateriaDAO.generarCodigo();
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("codigogenerado", "" + codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 4: {
                    String mensaje = "";
                    String codcad = request.getParameter("hddcodigo");
                    int codigo = Integer.parseInt(codcad);
                    String carcad = request.getParameter("cbocarrera");
                    int codcar = Integer.parseInt(carcad);
                    String nombre = request.getParameter("txtnombre");
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(codcar);
                    objMateriaBean.setCODMATERIA(codigo);
                    objMateriaBean.setNOMBMATERIA(nombre);
                    objMateriaBean.setESTADO("A");
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    int valido = objMateriaDAO.InsertarMateria(objMateriaBean);
                    if (valido == 1) {
                        mensaje = "Registro Insertado !!!";
                        codigo = objMateriaDAO.generarCodigo();
                    } else {
                        mensaje = "Registro no Insertado !!!";
                    }
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("mensaje", mensaje);
                    request.setAttribute("codigogenerado", "" + codigo);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaRegistrarMant.jsp").forward(request, response);
                    break;
                }
                case 5: {
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList listaMateria = objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria", listaMateria);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 6: {
                    String codcad = request.getParameter("COD");
                    int codigo = Integer.parseInt(codcad);
                    String carrera = request.getParameter("CODCAR");
                    int codcar = Integer.parseInt(carrera);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(codcar);
                    objMateriaBean.setCODMATERIA(codigo);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    objMateriaBean = objMateriaDAO.TraerMateria(objMateriaBean);
                    request.setAttribute("datos", objMateriaBean);
                    
                  
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaModificarMant.jsp").forward(request, response);
                    break;
                }
                case 7: {
                    String mensaje = "";
                    String codcad = request.getParameter("hddcodigo");
                    int codigo = Integer.parseInt(codcad);
                    String carcad = request.getParameter("hddcodcar");
                    int codcar = Integer.parseInt(carcad);
                    String nombre = request.getParameter("txtnombre");
                    String estado = request.getParameter("cboestado");
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(codcar);
                    objMateriaBean.setCODMATERIA(codigo);
                    objMateriaBean.setNOMBMATERIA(nombre);
                    objMateriaBean.setESTADO(estado);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    int valido = objMateriaDAO.ModificarMateria(objMateriaBean);
                    if (valido == 1) {
                        mensaje = "Registro Modificado !!!";
                    } else {
                        mensaje = "Registro no Modificado !!!";
                    }
                    objMateriaBean = objMateriaDAO.TraerMateria(objMateriaBean);
                    request.setAttribute("mensaje", mensaje);
                    request.setAttribute("datos", objMateriaBean);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaModificarMant.jsp").forward(request, response);
                    break;
                }
                case 8: {
                    String codcad = request.getParameter("COD");
                    int codigo = Integer.parseInt(codcad);
                    String carrera = request.getParameter("CODCAR");
                    int codcar = Integer.parseInt(carrera);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODMATERIA(codigo);
                    objMateriaBean.setCODCARRERA(codcar);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    objMateriaDAO.EliminarMateria(objMateriaBean);
                    ArrayList listaMateria = objMateriaDAO.ListarMateria();
                    request.setAttribute("listaMateria", listaMateria);
                    getServletContext().getRequestDispatcher("/Entidades/Materia/FrmMateriaMant.jsp").forward(request, response);
                    break;
                }
                case 9: {
                    
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    String ruta = request.getContextPath();
                    out9.println("<select name='cbomateria' class=\"form-control col-lg-12\"  id='cbomateria' onchange=\"cargarUnidadTematica('" + ruta + "','UnidadTematica',9,this.value);filtrarEstructuraExamen('" + ruta + "','EstructuraExamen',12)\">");

                    out9.println("<option value='0'>------------------------</option>");
                    for (MateriaBean obj : listamateria) {
                        out9.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");

                    }
                    out9.println("</select>");
                    break;
                }
                case 10: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    String CODMAT = request.getParameter("CODMAT");
                    int materia = Integer.parseInt(CODMAT);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);
                    String ruta = request.getContextPath();
                    out9.println("<select name='cbomateria' id='cbomateria'  onchange=\"cargarUnidadTematica('" + ruta + "','UnidadTematica',9,this.value);filtrarEstructuraExamen('" + ruta + "','EstructuraExamen',12)\">");
                    out9.println("<option value='0'>------------------------</option>");
                    for (MateriaBean obj : listamateria) {
                        if (obj.getCODMATERIA() == materia) {
                            out9.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                        } else {
                            out9.println("<option value='" + obj.getCODMATERIA() + "'>" + obj.getNOMBMATERIA() + "</option>");
                        }
                    }
                    out9.println("</select>");
                    break;
                }
                case 11: {

                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    String ruta = request.getContextPath();
                    out9.println("<select   class=\"form-control\" name='cbomateria'   id='cbomateria'>");

                    out9.println("<option value='0'>------------------------</option>");
                    for (MateriaBean obj : listamateria) {
                        out9.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
                    }
                    out9.println("</select>");
                    break;
                }
                case 12: {

                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    String ruta = request.getContextPath();
                    out9.println("<select name='cbomateria' id='cbomateria' onchange=\"cargarUnidadTematica('" + ruta + "','UnidadTematica',11,this.value);\"           >");

                    out9.println("<option value='0'>------------------------</option>");
                    for (MateriaBean obj : listamateria) {
                        out9.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");

                    }
                    out9.println("</select>");
                    break;
                }
                case 13: {

                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out9 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    String CODMAT = request.getParameter("CODMAT");
                    
                    int carrera = Integer.parseInt(CODCAR);
                    int materia = 0;
                    try {
                        materia= Integer.parseInt(CODMAT);
                    } catch (Exception e) {
                        materia = 0;
                    }
                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    String ruta = request.getContextPath();
                    out9.println("<select name='cbomateria'   id='cbomateria' onchange=\"cargarDocenteMateria('" + ruta + "','DefinirCoordinador',7,'"+CODCAR+"',this.value,0);\"           >");

                    out9.println("<option value='0'>------------------------</option>");
                    for (MateriaBean obj : listamateria) {
                        if(obj.getCODMATERIA() == materia){
                            out9.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                        }else{
                            out9.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
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
