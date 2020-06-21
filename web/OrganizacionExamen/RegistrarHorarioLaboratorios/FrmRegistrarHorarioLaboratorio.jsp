<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BEAN.SemestreBean" %>
<%@page import="BEAN.LaboratorioBean" %>
<%@page import="BEAN.TurnoBean" %>
<%@page import="BEAN.DiaBean" %>
<%@page import="BEAN.HorariodeLaboratorioDisponiblesBean" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.SimpleDateFormat" %>
<%!
    ArrayList<SemestreBean> listasemestre;
    ArrayList<LaboratorioBean> listalaboratorio;
    ArrayList<TurnoBean> listaturno;
    ArrayList<DiaBean> listadia;
    ArrayList<HorariodeLaboratorioDisponiblesBean> listahorariodelabdis;
    SimpleDateFormat formatfec = new SimpleDateFormat("hh:mm a");
%>
<%
    listasemestre = (ArrayList<SemestreBean>) request.getAttribute("listasemestre");
    listalaboratorio = (ArrayList<LaboratorioBean>) request.getAttribute("listalaboratorio");
    listaturno = (ArrayList<TurnoBean>) request.getAttribute("listaturno");
    listadia = (ArrayList<DiaBean>) request.getAttribute("listadia");
    listahorariodelabdis = (ArrayList<HorariodeLaboratorioDisponiblesBean>) request.getAttribute("listahorariodelabdis");
    int i = 0;
%>
<html>
    <head>
        <script type="text/javascript">
            function salir() {
                document.form.action = "<%=request.getContextPath()%>/RegistrarHorarioLaboratorioServlet";
                document.form.method = "GET";
                document.form.op.value = "2";
                document.form.submit();
            }

        </script>
    </head>
    <body>
    <center>
        <input type="hidden" name="op"/>
        <input type="hidden" name="hddcodigo" id="hddcodigo"/>
        <table width="70%" border="0" class="FondoTabla">
            <tr class="tituloTabla">
                <td><h3>REGISTRAR HORARIO DE LABORATORIOS DISPONIBLES</h3></td>
            </tr>
        </table>
        <table width="300" class="FondoTabla">
            <tr>
                <td class="text_normal">Semestre :</td>
                <td>
                    <select name="cbosemestre" id="cbosemestre" onchange="cargarRegistroHorarioLab('<%=request.getContextPath()%>')">
                        <option value="0">-Seleccionar Semestre-</option>
                        <% for (SemestreBean obj : listasemestre) {%>
                        <option value="<%=obj.getCODSEMESTRE()%>"><%=obj.getNOMBSEMESTRE()%></option>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Laboratorio :</td>
                <td>
                    <select name="cbolaboratorio" id="cbolaboratorio" onchange="cargarRegistroHorarioLab()">
                        <option value="0">-Seleccionar Laboratorio-</option>
                        <% for (LaboratorioBean obj : listalaboratorio) {%>
                        <option value="<%=obj.getCODLAB()%>"><%=obj.getDESCRIPLAB()%></option>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Turno :</td>
                <td>
                    <select name="cboturno" id="cboturno" onchange="cargarRegistroHorarioLab()">
                        <option value="0">-Seleccionar Turno-</option>
                        <% for (TurnoBean obj : listaturno) {%>
                        <option value="<%=obj.getCODTURNO()%>"><%=obj.getNOMBTURNO()%></option>
                        <% } %>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Día :</td>
                <td>
                    <select name="cbodia" id="cbodia" onchange="cargarRegistroHorarioLab()">
                        <option value="0">-Seleccionar Dia-</option>
                        <% for (DiaBean obj : listadia) {%>
                        <option value="<%=obj.getCODDIA()%>"><%=obj.getNOMBDIA()%></option>
                        <% }%>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Hora Inicio :</td>
                <td>
                    <input type="time" name="tmehorainicio" id="tmehorainicio"/>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Hora Fin :</td>
                <td>
                    <input type="time" name="tmehorafin" id="tmehorafin"/>
                </td>
            </tr>
        </table>
        <table class="FondoTabla">
            <tr>

                <td>
                    <input type="button" id="btnNuevo" class="boton" onclick="nuevoHorario('<%=request.getContextPath()%>')" class="boton" value="Nuevo" style="height:29px;width:105px;"/>
                </td>
                <td>
                    <input type="button" id="btnGuardar" class="boton" onclick="guardarHorario('<%=request.getContextPath()%>')" value="Guardar" class="boton" style="height:29px;width:105px;"/>
                    <input type="button" id="btnActualizar" class="boton" onclick="actualizarHorario('<%=request.getContextPath()%>')" value="Modificar" class="boton" style="display: none;height:29px;width:105px;"/>
                </td>
                <td>
                    <input type="button" id="btnSalir" class="boton" onclick="salir()" value="Salir" class="boton" style="display: none;height:29px;width:105px;"/>
                </td>
            </tr>
        </table>
        <font color="red">
        <%
            if (request.getAttribute("mensaje") != null) {
                String msj = (String) request.getAttribute("mensaje");
                out.print(msj);
            }
        %>
        </font>
        <div id="divlistado" style="padding: 5px auto 5px auto; width: 70%; background: #E7E4E6;">
            <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                <thead>
                    <tr>
                        <th>Laboratorio</th>
                        <th>Dia</th>
                        <th>Horario</th>
                        <th>Turno</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Laboratorio</th>
                        <th>Dia</th>
                        <th>Horario</th>
                        <th>Turno</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                </tfoot>
                <tbody>
                    <%  for (HorariodeLaboratorioDisponiblesBean obj : listahorariodelabdis) {%>
                    <tr>
                        <td><%=obj.getDESCRIPLAB()%></td>
                        <td><%=obj.getNOMBDIA()%></td>
                        <td><%=obj.getHORAINICIO()%> - <%=obj.getHORAFIN()%></td>
                        <td><%=obj.getNOMBTURNO()%></td>
                        <td>
                <center>
                    <input type="button"  class="boton"  value="Modificar"  style="height:20px;width:110px;"
                           onclick="modificarHorario('<%=request.getContextPath()%>',
                                                    '<%=obj.getCODHORARIOLAB()%>', 
                                                    '<%=obj.getCODSEMESTRE()%>', 
                                                    '<%=obj.getCODLAB()%>', 
                                                    '<%=obj.getCODTURNO()%>', 
                                                    '<%=obj.getCODDIA()%>', 
                                                    '<%=obj.getHORAINICIO()%>',
                                                    '<%=obj.getHORAFIN()%>')"/>
                </center>
                </td>
                <td>
                <center>
                    <input type="button"  class="boton"  value="Eliminar"  style="height:20px;width:110px;"
                 onclick="eliminarHorario('<%=request.getContextPath()%>', '<%=obj.getCODHORARIOLAB()%>')"/> 
                </center>
                </td>
                </tr>
                <%  }%>
                </tbody>
            </table>
        </div>
        <br/>
    </center>
</body>
</html>


