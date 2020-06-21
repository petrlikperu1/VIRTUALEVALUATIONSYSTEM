package SERVLET;

import BEAN.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import BEAN.MateriaBean;
import BEAN.ProgramacionExamenBean;
import BEAN.SemestreBean;
import BEAN.TurnoBean;
import DAO.*;
import com.google.gson.Gson;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class ProgramarExamenServlet extends HttpServlet {

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

                    String CODSEMESTRE = request.getParameter("CODSEMESTRE");
                    String CODCARRERA = request.getParameter("CODCARRERA");
                    String CODMATERIA = request.getParameter("CODMATERIA");
                    String CODPROGMAT = request.getParameter("CODPROGMAT");

                    EstructuraExamenBean objEstructuraExamenBean = new EstructuraExamenBean();
                    objEstructuraExamenBean.setCODESTRUCEXAMEN(0);
                    objEstructuraExamenBean.setCODSEMESTRE(Integer.parseInt(CODSEMESTRE));
                    objEstructuraExamenBean.setCODTIPEXAMEN(0);
                    objEstructuraExamenBean.setCODCARRERA(Integer.parseInt(CODCARRERA));
                    objEstructuraExamenBean.setCODMATERIA(Integer.parseInt(CODMATERIA));
                    objEstructuraExamenBean.setCODPROGMAT(Integer.parseInt(CODPROGMAT));

                    SemestreDAO objSemestreDAO = new SemestreDAO();

                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(objEstructuraExamenBean.getCODCARRERA());
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    ArrayList listasemestre = objSemestreDAO.ListarSemestre();
                    TipoExamenDAO objTipoExamenDAO = new TipoExamenDAO();

                    ArrayList listatipoexamen = objTipoExamenDAO.ListarTipoExamen();
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();

                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();

                    request.setAttribute("datos", objEstructuraExamenBean);
                    request.setAttribute("listasemestre", listasemestre);
                    request.setAttribute("listatipoexamen", listatipoexamen);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listamateria", listamateria);

                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmProgramarExamen.jsp").forward(request, response);

                    break;
                }
                case 2: {
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/FrmMenuOrganizacionExamen.jsp").forward(request, response);
                    break;
                }
                case 3: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out3 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    String CODMAT = request.getParameter("CODMAT");
                    int materia = Integer.parseInt(CODMAT);

                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    out3.println("<select name='cbomateria' id='cbomateria' onchange=\"traerCodEstrucExamen('" + request.getContextPath() + "');cargarProgramacionExamen('" + request.getContextPath() + "');\">");
                    out3.println("<option value='0'>-Seleccionar Materia-</option>");
                    for (MateriaBean obj : listamateria) {
                        if (obj.getCODMATERIA() == materia) {
                            out3.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                        } else {
                            out3.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
                        }
                    }
                    out3.println("</select>");
                    break;
                }
                case 4: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out4 = response.getWriter();
                    String codsem = request.getParameter("SEMESTRE");
                    int semestre = Integer.parseInt(codsem);
                    String codcar = request.getParameter("CARRERA");
                    int carrera = Integer.parseInt(codcar);
                    String codtipexa = request.getParameter("TIPOEXAMEN");
                    int tipoexamen = Integer.parseInt(codtipexa);
                    String codmat = request.getParameter("MATERIA");
                    int materia = Integer.parseInt(codmat);

                    EstructuraExamenBean objEstructuraExamenBean = new EstructuraExamenBean();
                    objEstructuraExamenBean.setCODSEMESTRE(semestre);
                    objEstructuraExamenBean.setCODCARRERA(carrera);
                    objEstructuraExamenBean.setCODTIPEXAMEN(tipoexamen);
                    objEstructuraExamenBean.setCODMATERIA(materia);
                    ProgramacionExamenDAO objProgramacionExamenDAO = new ProgramacionExamenDAO();
                    ArrayList<ProgramacionExamenBean> listaProgramacionExamen = objProgramacionExamenDAO.ListarProgExamen(objEstructuraExamenBean);
                    out4.println("<table width=\"70%\" class=\"FondoTabla\">");
                    out4.println("<tr class=\"tituloTabla\"><td>Laboratorio</td><td>Dia</td><td>Horario</td><td>Turno</td><td>Modificar</td><td>Eliminar</td></tr>");
                    int a = 1;
                    for (ProgramacionExamenBean obj : listaProgramacionExamen) {
                        if (a % 2 == 0) {
                            out4.println("<tr class=\"fila_par\">");
                        } else {
                            out4.println("<tr class=\"fila_impar\">");
                        }
                        out4.println("<td>" + obj.getDESCRIPLAB() + "</td>");
                        out4.println("<td>" + obj.getNOMBDIA() + "</td>");
                        out4.println("<td>" + obj.getHORARIO() + "</td>");
                        out4.println("<td>" + obj.getNOMBTURNO() + "</td>");
                        out4.println("<td><center><button class=\"boton\" onclick=\"modificar()\">");
                        out4.println("<img src=\"" + request.getContextPath() + "/imagenes/modificar.png\" width=\"20\" height=\"20\">");
                        out4.println("Modificar</button></center></td>");
                        out4.println("<td><center><button class=\"boton\" onclick=\"eliminar()\">");
                        out4.println("<img src=\"" + request.getContextPath() + "/imagenes/eliminar.png\" width=\"20\" height=\"20\">");
                        out4.println("Eliminar</button> </center></td>");
                        out4.println("</tr>");
                        a++;
                    }
                    out4.println("</table>");
                    break;
                }
                case 5: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out5 = response.getWriter();
                    String codsem = request.getParameter("SEMESTRE");
                    int semestre = Integer.parseInt(codsem);
                    String codcar = request.getParameter("CARRERA");
                    int carrera = Integer.parseInt(codcar);
                    String codtipexa = request.getParameter("TIPOEXAMEN");
                    int tipoexamen = Integer.parseInt(codtipexa);
                    String codmat = request.getParameter("MATERIA");
                    int materia = Integer.parseInt(codmat);
                    EstructuraExamenBean objEstructuraExamenBean = new EstructuraExamenBean();
                    objEstructuraExamenBean.setCODSEMESTRE(semestre);
                    objEstructuraExamenBean.setCODCARRERA(carrera);
                    objEstructuraExamenBean.setCODTIPEXAMEN(tipoexamen);
                    objEstructuraExamenBean.setCODMATERIA(materia);
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    int codigo = objEstructuraExamenDAO.TraerCodEstrucExamen(objEstructuraExamenBean);
                    out5.println("<input type=\"hidden\" name=\"hddcodestrucexamen\" value=\"" + codigo + "\"/>");
                    break;
                }
                case 6: {
                    String codestexa = request.getParameter("hddcodestrucexamen");
                    int codestrucexamen = Integer.parseInt(codestexa);
                    String codsem = request.getParameter("hddsemestre");
                    int semestre = Integer.parseInt(codsem);
                    String codtipexa = request.getParameter("hddtipoexamen");
                    int tipoexamen = Integer.parseInt(codtipexa);
                    String codcar = request.getParameter("hddcarrera");
                    int carrera = Integer.parseInt(codcar);
                    String codmat = request.getParameter("hddmateria");
                    int materia = Integer.parseInt(codmat);
                    EstructuraExamenBean objEstructuraExamenBean = new EstructuraExamenBean();
                    objEstructuraExamenBean.setCODESTRUCEXAMEN(codestrucexamen);
                    objEstructuraExamenBean.setCODSEMESTRE(semestre);
                    objEstructuraExamenBean.setCODTIPEXAMEN(tipoexamen);
                    objEstructuraExamenBean.setCODCARRERA(carrera);
                    objEstructuraExamenBean.setCODMATERIA(materia);
                    SemestreDAO objSemestreDAO = new SemestreDAO();
                    ArrayList listasemestre = objSemestreDAO.ListarSemestre();
                    TipoExamenDAO objTipoExamenDAO = new TipoExamenDAO();
                    ArrayList listatipoexamen = objTipoExamenDAO.ListarTipoExamen();
                    CarreraProfesionalDAO objCarreraProfesionalDAO = new CarreraProfesionalDAO();
                    ArrayList listaCarreraProfesional = objCarreraProfesionalDAO.ListarCarreraProfesional();
                    request.setAttribute("datos", objEstructuraExamenBean);
                    request.setAttribute("listasemestre", listasemestre);
                    request.setAttribute("listatipoexamen", listatipoexamen);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmProgramarExamen.jsp").forward(request, response);
                    break;
                }
                case 7: {
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out3 = response.getWriter();
                    String CODCAR = request.getParameter("CODCAR");
                    int carrera = Integer.parseInt(CODCAR);
                    String CODMAT = request.getParameter("CODMAT");
                    int materia = Integer.parseInt(CODMAT);

                    MateriaBean objMateriaBean = new MateriaBean();
                    objMateriaBean.setCODCARRERA(carrera);
                    MateriaDAO objMateriaDAO = new MateriaDAO();
                    ArrayList<MateriaBean> listamateria = objMateriaDAO.FiltrarMateria(objMateriaBean);

                    out3.println("<select name='cbomateria' id='cbomateria' onchange=\"LlenarEstructuraExamen('" + request.getContextPath() + "')\">");
                    out3.println("<option value='0'>-Seleccionar Materia-</option>");
                    for (MateriaBean obj : listamateria) {
                        if (obj.getCODMATERIA() == materia) {
                            out3.println("<option value='" + obj.getCODMATERIA() + "' selected>" + obj.getNOMBMATERIA() + "</option>");
                        } else {
                            out3.println("<option value='" + obj.getCODMATERIA() + "' >" + obj.getNOMBMATERIA() + "</option>");
                        }
                    }
                    out3.println("</select>");
                    break;
                }
                case 8: {
                    EstructuraExamenBean vl_EstructuraExamenBean = new Gson().fromJson(request.getParameter("objEstructuraExamenBean"), EstructuraExamenBean.class);
                    EstructuraExamenDAO objEstructuraExamenDAO = new EstructuraExamenDAO();
                    vl_EstructuraExamenBean = objEstructuraExamenDAO.BuscarEstructuraExamen(vl_EstructuraExamenBean.getCODESTRUCEXAMEN());
                    request.setAttribute("EstructuraExamen", vl_EstructuraExamenBean);

                    DetalleEstructuraExamenDAO objDetalleEstructuraExamenDAO = new DetalleEstructuraExamenDAO();
                    ArrayList<DetalleEstructuraExamenBean> listaDetalle = objDetalleEstructuraExamenDAO.listarDetalleEstructuraExamen(vl_EstructuraExamenBean.getCODESTRUCEXAMEN());
                    request.setAttribute("ListDetalleEstructuraExamenBean", listaDetalle);

                    LaboratorioDAO objLaboratorioDAO = new LaboratorioDAO();
                    ArrayList<LaboratorioBean> listalaboratorio = objLaboratorioDAO.ListarLaboratorio();
                    DiaDAO objDiaDAO = new DiaDAO();
                    ArrayList<DiaBean> listadia = objDiaDAO.ListarDia();
                    TurnoDAO objTurnoDAO = new TurnoDAO();
                    ArrayList<TurnoBean> listaturno = objTurnoDAO.ListarTurno();

                    request.setAttribute("listalaboratorio", listalaboratorio);
                    request.setAttribute("listadia", listadia);
                    request.setAttribute("listaturno", listaturno);

                    if (vl_EstructuraExamenBean.getESTADO().equalsIgnoreCase("P")) {
                        ProgramacionExamenBean objProgramacionExamenBean;
                        HorariodeLaboratorioDisponiblesBean objHorariodeLaboratorioDisponiblesBean;

                        ProgramacionExamenDAO objProgramacionExamenDAO = new ProgramacionExamenDAO();
                        objProgramacionExamenBean = objProgramacionExamenDAO.GetProgramacionExamen_CODESTRUCTURAEXAMEN(vl_EstructuraExamenBean.getCODESTRUCEXAMEN());

                        request.setAttribute("ProgramacionExamen", objProgramacionExamenBean);

                        HorariodeLaboratorioDisponiblesDAO objHorariodeLaboratorioDisponiblesDAO = new HorariodeLaboratorioDisponiblesDAO();
                        objHorariodeLaboratorioDisponiblesBean = objHorariodeLaboratorioDisponiblesDAO.GetHorariodeLabDis(objProgramacionExamenBean.getCODHORARIOLAB());

                        request.setAttribute("HorarioLaboratorio", objHorariodeLaboratorioDisponiblesBean);
                    }

                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmModalProgramacionExamen.jsp").forward(request, response);
                    break;
                }
                case 9: {
                    String Mensaje = "";
                    ProgramacionExamenBean vl_ProgramacionExamenBean = new Gson().fromJson(request.getParameter("ProgramacionExamenBean"), ProgramacionExamenBean.class);
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();
                    int valido = vl_ProgramacionExamenDAO.InsertarProgramacionExamen(vl_ProgramacionExamenBean);
                    if (valido == 1) {
                        Mensaje = "Registro Insertado !!!";
                    } else {
                        Mensaje = "Registro no Insertado !!!";
                    }
                    
                 /*   DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    String GENEXAMEN = "false";
                    boolean VERNOTAS = false;
                    SemestreDAO vl_SemestreDAO = new SemestreDAO();
                    ArrayList<ProgramacionExamenBean> listaProgramacionExamen = vl_ProgramacionExamenDAO.ListarProgramacionExamenxdocente(new ProgramacionExamenBean(), Dcoente);
                    ArrayList<SemestreBean> listaSemestre = vl_SemestreDAO.ListarSemestreProgramacionMateria(Dcoente);
                    request.setAttribute("listaProgramacionExamen", listaProgramacionExamen);
                    request.setAttribute("listaSemestre", listaSemestre);
                    request.setAttribute("GENEXAMEN", GENEXAMEN);
                    request.setAttribute("VERNOTAS", VERNOTAS);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmProgramarExamenMant.jsp").forward(request, response);
                  */  break;
                }
                case 10: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");

                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = new ArrayList<CarreraProfesionalBean>();
                    ArrayList<ProgramacionMateriaBean> listaProgramacionMateriaBean = new ArrayList<ProgramacionMateriaBean>();
                    ArrayList<SemestreBean> listaSemestre;

                    SemestreDAO objSemestreDAO = new SemestreDAO();

                    listaSemestre = objSemestreDAO.ListarSemestreProgramacionMateria(Dcoente);

                    request.setAttribute("listaProgramacionMateriaBean", listaProgramacionMateriaBean);
                    request.setAttribute("listaCarreraProfesional", listaCarreraProfesional);
                    request.setAttribute("listaSemestre", listaSemestre);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmCursosAsignados.jsp").forward(request, response);
                    break;
                }
                case 11: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("ProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
                    CarreraProfesionalDAO vl_CarreraProfesionalDAO = new CarreraProfesionalDAO();
                    listaCarreraProfesional = vl_CarreraProfesionalDAO.ListarCarreraProfecionalProgramacionMateria(Dcoente, vl_ProgramacionMateriaBean);

                    out = response.getWriter();

                    out.println("<select class=\"form-control\" name=\"cbocarrera\" id=\"cbocarrera\"  onchange=\"filtrarMateriasAsignadas('" + request.getContextPath() + "')\">");
                    out.println("   <option value=\"0\">---------------------</option>");

                    String Seleccionado = "";
                    if (listaCarreraProfesional.size() == 1) {
                        Seleccionado = " Selected ";
                    }
                    for (CarreraProfesionalBean obj : listaCarreraProfesional) {
                        out.println("   <option " + Seleccionado + " value=\"" + obj.getCODCARRERA() + "\">" + obj.getNOMBCARRERA() + "</option>");
                    }
                    out.println("</select>");
                    break;
                }
                case 12: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("ProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                    ArrayList<ProgramacionMateriaBean> listaProgramacionMateriaBean;

                    out = response.getWriter();

                    ProgramacionMateriaDAO vl_ProgramacionMateriaDAO = new ProgramacionMateriaDAO();

                    listaProgramacionMateriaBean = vl_ProgramacionMateriaDAO.ListarMateriasAsignadasDocente(Dcoente, vl_ProgramacionMateriaBean);

                    int cont = 1;
                    for (ProgramacionMateriaBean obj : listaProgramacionMateriaBean) {
                        if (cont % 2 == 0) {
                            out.println("<tr class=\"fila_impar\">");
                        } else {
                            out.println("<tr class=\"fila_par\">");
                        }
                        out.println("<td>");
                        out.println("   <center>");
                        out.println(cont);
                        out.println("   </center>");
                        out.println("        </td>");
                        out.println("        <td>");
                        out.println(obj.getNOMBREMATERIA());
                        out.println("        </td>");
                        out.println("        <td>");
                        out.println("           <center>");
                        out.println("            <input type=\"button\" value=\"Programar Examen\"  style=\"height:40px;");
                        out.println("                   width:200px;\"  onclick=\"CallMant('" + request.getContextPath() + "','ProgramarExamen',1,'&CODPROGMAT=" + obj.getCODPROGRAMAT() + "&CODCARRERA=" + vl_ProgramacionMateriaBean.getCODCARRERA() + "&CODSEMESTRE=" + vl_ProgramacionMateriaBean.getCODSEMESTRE() + "&CODMATERIA=" + obj.getCODMATERIA() + "')\">");
                        out.println("           </center>");
                        out.println("        </td>");
                        out.println("</tr>");
                        cont++;
                    }
                    break;
                }
                case 13: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    ProgramacionMateriaBean vl_ProgramacionMateriaBean = new Gson().fromJson(request.getParameter("ProgramacionMateriaBean"), ProgramacionMateriaBean.class);
                    ArrayList<ProgramacionMateriaBean> listaProgramacionMateriaBean;

                    out = response.getWriter();

                    ProgramacionMateriaDAO vl_ProgramacionMateriaDAO = new ProgramacionMateriaDAO();

                    listaProgramacionMateriaBean = vl_ProgramacionMateriaDAO.ListarMateriasAsignadasDocente(Dcoente, vl_ProgramacionMateriaBean);

                    out.println(" <select name=\"cbomateria\" id=\"cbomateria\" onchange=\"filtrarProgramacionExamenes('" + request.getContextPath() + "')\">");
                    out.println("<option value=\"0\" selected>---------------------</option>");

                    for (ProgramacionMateriaBean obj : listaProgramacionMateriaBean) {
                        out.println("<option value=\"" + obj.getCODMATERIA() + "\" >" + obj.getNOMBREMATERIA() + "</option>");
                    }

                    out.println("</select>");

                    break;
                }
                case 14: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    String GENEXAMEN = request.getParameter("GENEXAMEN");
                    boolean VERNOTAS = Boolean.parseBoolean(request.getParameter("VERNOTAS").toString());
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();
                    SemestreDAO vl_SemestreDAO = new SemestreDAO();
                    ArrayList<ProgramacionExamenBean> listaProgramacionExamen = vl_ProgramacionExamenDAO.MostrarProgramacionExamenxdocente(new ProgramacionExamenBean(), Dcoente);
                    ArrayList<SemestreBean> listaSemestre = vl_SemestreDAO.ListarSemestreProgramacionMateria(Dcoente);
                    request.setAttribute("listaProgramacionExamen", listaProgramacionExamen);
                    request.setAttribute("listaSemestre", listaSemestre);
                    request.setAttribute("GENEXAMEN", GENEXAMEN);
                    request.setAttribute("VERNOTAS", VERNOTAS);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmProgramarExamenMant.jsp").forward(request, response);
                    break;
                }
                case 15: {
                    DocenteSBean Dcoente = (DocenteSBean) session.getAttribute("SESION");
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();

                    boolean GENEXAMEN = Boolean.parseBoolean(request.getParameter("GENEXAMEN").toString());
                    boolean VERNOTAS = Boolean.parseBoolean(request.getParameter("VERNOTAS").toString());

                    ProgramacionExamenBean vlProgramacionExamenBean = new Gson().fromJson(request.getParameter("ProgramacionExamenBean"), ProgramacionExamenBean.class);
                    ArrayList<ProgramacionExamenBean> listaProgramacionExamen = vl_ProgramacionExamenDAO.ListarProgramacionExamenxdocente(vlProgramacionExamenBean, Dcoente);

                    out = response.getWriter();

                    out.println("<table id=\"listado\" class=\"display\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">            ");
                    out.println("    <thead>                                                                                            ");
                    out.println("        <tr>                                                                                           ");
                    out.println("            <th data-visible=\"false\">Codigo</th>                                                     ");
                    out.println("            <th>Semestre</th>                                                                          ");
                    out.println("            <th>Carrera</th>                                                                           ");
                    out.println("            <th>Materia</th>                                                                           ");
                    out.println("            <th>Fecha Examen</th>                                                                      ");
                    out.println("            <th>Lugar y hora de examen</th>                                                            ");
                    out.println("            <th>Tipo Examen</th>                                                                       ");
                    out.println("            <th>Observación</th>                                                                       ");
                    out.println("            <th data-visible=\"false\">ESTADO PROGRAMAR EXAMEN</th>                                    ");
                    if (GENEXAMEN) {
                        out.println("            <th></th>                                                                                  ");
                    } else {
                        out.println("            <th data-visible=\"false\"></th>                                                                                  ");
                    }
                    if (VERNOTAS) {
                        out.println("            <th></th>                                                                                  ");
                    } else {
                        out.println("            <th data-visible=\"false\"></th>                                                                                  ");
                    }
                    out.println("        </tr>                                                                                          ");
                    out.println("    </thead>                                                                                           ");
                    out.println("    <tfoot>                                                                                            ");
                    out.println("        <tr>                                                                                           ");
                    out.println("            <th data-visible=\"false\">Codigo</th>                                                    ");
                    out.println("            <th>Semestre</th>                                                                          ");
                    out.println("            <th>Carrera</th>                                                                           ");
                    out.println("            <th>Materia</th>                                                                           ");
                    out.println("            <th>Fecha Examen</th>                                                                      ");
                    out.println("            <th>Lugar y hora de examen</th>                                                            ");
                    out.println("            <th>Tipo Examen</th>                                                                       ");
                    out.println("            <th>Observación</th>                                                                       ");
                    out.println("            <th data-visible=\"false\">ESTADO PROGRAMAR EXAMEN</th>                                    ");
                    if (GENEXAMEN) {
                        out.println("            <th></th>                                                                                  ");
                    } else {
                        out.println("            <th data-visible=\"false\"></th>                                                                                  ");
                    }
                    if (VERNOTAS) {
                        out.println("            <th></th>                                                                                  ");
                    } else {
                        out.println("            <th data-visible=\"false\"></th>                                                                                  ");
                    }
                    out.println("        </tr>                                                                                          ");
                    out.println("    </tfoot>                                                                                           ");
                    out.println("    <tbody>                                                                                            ");
                    for (ProgramacionExamenBean obj : listaProgramacionExamen) {
                        out.println("        <tr>                                                                                          	");
                        out.println("            <td>" + obj.getCODPROGEXAMEN() + "</td>                                                       	");
                        out.println("            <td>" + obj.getNOMBSEMESTRE() + "</td>                                                        	");
                        out.println("            <td>" + obj.getNOMBCARRERA() + "</td>                                                         	");
                        out.println("            <td>" + obj.getNOMBMATERIA() + "</td>                                                         	");
                        out.println("            <td>" + obj.getNOMBDIA() + "\" \"" + obj.getFECHAEJECUCION() + "</td>                          ");
                        out.println("            <td>" + obj.getDESCRIPLAB() + "\" \"" + obj.getHORAINICIO() + "\"-\"" + obj.getHORAFIN() + "</td>");
                        out.println("            <td>" + obj.getNOMBTIPEXAMEN() + "</td>                                                       	");
                        out.println("            <td>" + obj.getOBSERVACIONES() + "</td>                                                       	");
                        out.println("            <td>" + obj.getESTADOPROGRAMAREXAMEN() + "</td>                                                 ");
                        if (obj.getESTADOPROGRAMAREXAMEN().equalsIgnoreCase("P")) {
                            out.println("<td>"
                                    + "<center>"
                                    + "<button class=\"boton\" onclick=\"GenerarExamen('" + request.getContextPath() + "','" + obj.getCODPROGEXAMEN() + "',this)\">");
                            out.println("               <img src=\"" + request.getContextPath() + "/imagenes/horariolab.png\" width=\"20\" height=\"20\">");
                            out.println("               Generar Examen"
                                    + "        </button> "
                                    + "       </center>"
                                    + " </td>");
                        } else if (obj.getESTADOPROGRAMAREXAMEN().equalsIgnoreCase("G")) {
                            out.println("<td>"
                                    + "<center>"
                                    + "<button class=\"boton\" onclick=\"IniciarProgramacionExamen('" + request.getContextPath() + "','" + obj.getCODPROGEXAMEN() + "')\">");
                            out.println("               <img src=\"" + request.getContextPath() + "/imagenes/pizarra.png\" width=\"20\" height=\"20\">");
                            out.println("               Iniciar Examen"
                                    + "        </button> "
                                    + "       </center>"
                                    + " </td>");
                        } else if (obj.getESTADOPROGRAMAREXAMEN().equalsIgnoreCase("I")) {
                            out.println("<td>"
                                    + "<center>"
                                    + "<button class=\"boton\" onclick=\"FinalizarProgramacionExamen('" + request.getContextPath() + "','" + obj.getCODPROGEXAMEN() + "')\">");
                            out.println("               <img src=\"" + request.getContextPath() + "/imagenes/horariolab.png\" width=\"20\" height=\"20\">");
                            out.println("               Finalizar Examen"
                                    + "        </button> "
                                    + "       </center>"
                                    + " </td>");
                        } else {
                            out.println("<td></td>");
                        }
                        String disabled = "disabled";
                        if (obj.getESTADOPROGRAMAREXAMEN().equalsIgnoreCase("I") || obj.getESTADOPROGRAMAREXAMEN().equalsIgnoreCase("F")) {
                            disabled = "";
                        }
                        out.println("<td>\n"
                                + "                                     <center>\n"
                                + "                                        <button " + disabled + " class=\"boton\" onclick=\"VerNotas('" + request.getContextPath() + "','" + obj.getCODPROGEXAMEN() + "')\">\n"
                                + "                                            <img src=\"" + request.getContextPath() + "/imagenes/BUSCAR.png\" width=\"20\" height=\"20\">\n"
                                + "                                             Ver Notas\n"
                                + "                                        </button>\n"
                                + "                                    </center>\n"
                                + "                                </td>");
                        out.println("    </tr>                                                                                              ");
                    }
                    out.println("    </tbody>                                                                                           ");
                    out.println("</table>                                                                                               ");
                    break;
                }
                case 16: {//GenerarExamen
                    String CODPROGEXAMEN = request.getParameter("CODPROGEXAMEN");
                    int int_CODPROGEXAMEN = Integer.parseInt(CODPROGEXAMEN);
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();
                    vl_ProgramacionExamenDAO.GenerarExamen(int_CODPROGEXAMEN);
                    break;
                }
                case 17: {//IniciarExamen
                    String CODPROGEXAMEN = request.getParameter("CODPROGEXAMEN");
                    int int_CODPROGEXAMEN = Integer.parseInt(CODPROGEXAMEN);
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();
                    vl_ProgramacionExamenDAO.IniciarExamen(int_CODPROGEXAMEN);
                    break;
                }
                case 18: {//FinalizarExamen
                    String CODPROGEXAMEN = request.getParameter("CODPROGEXAMEN");
                    int int_CODPROGEXAMEN = Integer.parseInt(CODPROGEXAMEN);
                    ProgramacionExamenDAO vl_ProgramacionExamenDAO = new ProgramacionExamenDAO();
                    vl_ProgramacionExamenDAO.FinalizarExamen(int_CODPROGEXAMEN);
                    break;
                }
                case 19: {//FinalizarExamen
                    ProgramacionExamenBean vlProgramacionExamenBean = new Gson().fromJson(request.getParameter("programarExamenBean"), ProgramacionExamenBean.class);
                    ExamenAutoGeneradoDAO objExamenAutoGeneradoDAO = new ExamenAutoGeneradoDAO();

                    ArrayList<ExamenAutoGeneradoBean> ListaExamenAutoGeneradoBean = objExamenAutoGeneradoDAO.getListExamenesGenerados(vlProgramacionExamenBean);
                    request.setAttribute("ListExamenAutoGeneradoBean", ListaExamenAutoGeneradoBean);
                    getServletContext().getRequestDispatcher("/OrganizacionExamen/ProgramarExamen/FrmModalVerNotas.jsp").forward(request, response);
                    break;
                }
                case 20: {
                    response.setContentType("application/vnd.ms-excel");
                    response.setHeader("Content-Disposition", "attachment; filename=filename.xls");
                    Workbook libro = new HSSFWorkbook();
                    Sheet hoja = libro.createSheet("Notas");
                    for (int f = 0; f < 10; f++) {
                        Row fila = hoja.createRow(f);
                        for (int c = 0; c < 5; c++) {
                            Cell celda = fila.createCell(c);
                            if(f==0){
                                celda.setCellValue("Encabezado #" + c);
                            } else {
                                celda.setCellValue("Valor celda " + c + "," + f);
                            }
                        }
                    }
                    /*libro.write(response.getOutputStream()); // Write workbook to response.
                    libro.close();
                    */
                    
                    
                    ByteArrayOutputStream outByteStream = new ByteArrayOutputStream();
                    libro.write(outByteStream);
                    byte[] outArray = outByteStream.toByteArray();
                    response.setContentType("application/ms-excel");
                    response.setContentLength(outArray.length);
                    response.setHeader("Expires:", "0");
                    response.setHeader("Content-Disposition", "attachment; filename=Demo1.xls");
                    OutputStream outStream = response.getOutputStream();
                    outStream.write(outArray);
                    outStream.flush();
/*
//block2
                    request.setAttribute("Message", str1);
                    request.setAttribute("MessageDetails", str2);
                    request.getRequestDispatcher("/MyFile.jsp").forward(request, response);*/
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
