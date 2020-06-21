<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.*"%>
<%!
    EstructuraExamenBean objEstructuraExamen;
    ArrayList<DetalleEstructuraExamenBean> ListDetalleEstructuraExamenBean;
    ArrayList<LaboratorioBean> listalaboratorio;
    ArrayList<DiaBean> listadia;
    ArrayList<TurnoBean> listaturno;
    ProgramacionExamenBean objProgramacionExamenBean;
    HorariodeLaboratorioDisponiblesBean objHorariodeLaboratorioDisponiblesBean;
%>
<%
    objEstructuraExamen = (EstructuraExamenBean) request.getAttribute("EstructuraExamen");
    ListDetalleEstructuraExamenBean = (ArrayList<DetalleEstructuraExamenBean>) request.getAttribute("ListDetalleEstructuraExamenBean");
    listalaboratorio = (ArrayList<LaboratorioBean>) request.getAttribute("listalaboratorio");
    listadia = (ArrayList<DiaBean>) request.getAttribute("listadia");
    listaturno = (ArrayList<TurnoBean>) request.getAttribute("listaturno");

    objProgramacionExamenBean = new ProgramacionExamenBean();
    objHorariodeLaboratorioDisponiblesBean = new HorariodeLaboratorioDisponiblesBean();

    if (objEstructuraExamen.getESTADO().equalsIgnoreCase("P")) {
        objProgramacionExamenBean = (ProgramacionExamenBean) request.getAttribute("ProgramacionExamen");
        objHorariodeLaboratorioDisponiblesBean = (HorariodeLaboratorioDisponiblesBean) request.getAttribute("HorarioLaboratorio");
    }
%>
<style>
    div#ModalProgramar table.FondoTabla td input {
        margin-top: 3px;
    }
    div#ModalProgramar table.FondoTabla {
        margin-top: 10px;
    }
</style>
<div id="ModalProgramar" style="display: none">
    <input type="hidden" id="hddCODESTRUCEXAMEN" name="hddCODESTRUCEXAMEN" disabled="false" value="<%=objEstructuraExamen.getCODESTRUCEXAMEN()%>">
    <input type="hidden" id="hddCODHORARIOLAB" name="hddCODHORARIOLAB" disabled="false" value="<%=objProgramacionExamenBean.getCODHORARIOLAB()%>">

    <div style="display: none"><center>
            <table width="40%" border="0" align="center" class="FondoTabla">
                <tr   class="tituloFormulario"  >
                    <td >Codigo :</td>
                    <td><input type="text" id="txtcodigo" name="txtcodigo" disabled="false" value="<%=objEstructuraExamen.getCODESTRUCEXAMEN()%>"></td>
                </tr>
                <tr class="tituloFormulario">
                    <td >Semestre Academico :</td>
                    <td>
                        <input type="hidden" id="hddCODSEM" name="hddCODSEM" disabled="false" value="<%=objEstructuraExamen.getCODSEMESTRE()%>">
                        <input type="text" id="txtSemestre" name="txtSemestre" disabled="false" value="<%=objEstructuraExamen.getNOMBSEMESTRE()%>">
                    </td>
                </tr>
                <tr class="tituloFormulario">
                    <td >Carrera Profesional :</td>
                    <td>
                        <input type="text" id="cbocarrera" name="cbocarrera" disabled="false" value="<%=objEstructuraExamen.getNOMBCARRERA()%>">
                    </td>
                </tr>
                <tr class="tituloFormulario">
                    <td >Materia :</td>
                    <td> 
                        <div id="divmateria">
                            <input type="text" id="cboMateria" name="cboMateria" disabled="false" value="<%=objEstructuraExamen.getNOMBMATERIA()%>">
                        </div>
                    </td>     
                </tr>
                <tr class="tituloFormulario">
                    <td >Unidad Tematica :</td>
                    <td> 
                        <div id="divunidadtematica">
                            <input type="text" id="cbounidadtematica" name="cbounidadtematica" disabled="false" value="<%=objEstructuraExamen.getNOMBUNIDTEMA()%>">
                        </div>
                    </td>     
                </tr>
                <tr class="tituloFormulario">
                    <td >Tipo Examen  :</td>
                    <td> 
                        <div id="divtipoexamen">
                            <input type="text" id="cbotipoexamen" name="cbotipoexamen" disabled="false" value="<%=objEstructuraExamen.getNOMBTIPEXAMEN()%>">
                        </div>
                    </td>     
                </tr>
            </table>
            <div id='divMarcoLogico' style="visibility:visible;display:block;">
                <table  align="center"   width="80%" border="0" class="FondoTabla">
                    <tr class="tituloTabla" >
                        <td   align="center" >Tema </td>
                        <td   align="center" >Nivel Dificultad </td>
                        <td   align="center">Cantidad Preg </td>
                        <td   align="center">Puntaje x Preg</td>
                        <td   align="center">Penalidad x Pregunta Errada </td>
                        <td   align="center">Penalidad x Utilizar Ayudas </td>
                    </tr>
                    <%for (DetalleEstructuraExamenBean detalle : ListDetalleEstructuraExamenBean) {%>
                    <tr >
                        <td>
                            <input type="text" class="input_text" size="10"  name="txtTema" class="tituloTabla" disabled="false" value="<%=detalle.getNOMBTEMA()%>">
                        </td>
                        <td  align="center"  >
                            <input type="text" class="input_text" size="10"  name="txtnivel" class="tituloTabla" disabled="false" value="<%=detalle.getNOMBNIVEL()%>">                      
                        </td>
                        <td   align="center"><input type="text" class="input_text"  name="txtcantpreg"      class="tituloTabla" disabled="false" value="<%=detalle.getCANTPREG()%>"></td>
                        <td   align="center"><input type="text" class="input_text"  name="txtpuntajepreg"   class="tituloTabla" disabled="false" value="<%=detalle.getPUNTAJEXPREG()%>"></td>
                        <td   align="center"><input type="text" class="input_text"  name="txtpenalidadpreg" disabled="false"  class="tituloTabla" value="<%=detalle.getPENALIDADXPREG()%>"></td>
                        <td   align="center"><input type="text" class="input_text"  name="txtpenalidadayudas"   disabled="false" id="txtpenalidadayudas"  class="tituloTabla" value="<%=detalle.getPENALIDADAYUDA()%>"></td>
                    </tr>
                    <%}%>
                </table>
            </div>
            <div id='divMarcoTotal' style="visibility:visible;display:block;">
                <table   height="2%"  width="80%" border="0" class="FondoTabla">
                    <tr class="tituloTabla">
                        <td  colspan="10"  >. </td>
                    </tr>
                    <tr class="tituloFormulario">
                        <td>Total  Preguntas </td>
                        <td><input type="text" class="input_text" size="10"  name="txttotal"  id="txttotal"   value="0"   disabled></td>
                        <td>Puntaje Total </td>
                        <td><input type="text" class="input_text" size="10"  name="txttotal"  id="txtpuntajetotal"   value="0"  disabled ></td>
                        <td width="50%" >&nbsp; </td>                       
                    </tr>
                </table>
            </div>
        </center> </div>
    <center>
        <table width="300" class="FondoTabla">
            <tr>
                <td class="text_normal">Laboratorio :</td>
                <td>
                    <select name="cbolaboratorio"  id="cbolaboratorio" onchange="cargarHorarios('<%=request.getContextPath()%>')">
                        <option value="0">-Seleccionar Laboratorio-</option>
                        <% for (LaboratorioBean obj : listalaboratorio) {%>
                            <% if (obj.getCODLAB() == objHorariodeLaboratorioDisponiblesBean.getCODLAB()) {%>
                                <option value="<%=obj.getCODLAB()%>" selected><%=obj.getDESCRIPLAB()%></option>
                            <%} else {%>
                                <option value="<%=obj.getCODLAB()%>"><%=obj.getDESCRIPLAB()%></option>
                            <%}%>
                        <% }%>
                    </select>
                </td>
            </tr> 
            <tr>
                <td class="text_normal">Fecha :</td>
                <td>
                    <input type="date" id="txtfecha" placeholder="dd/mm/aaaa" class="input_text" onchange="changeFecha(this);
                            cargarHorarios('<%=request.getContextPath()%>')"
                                value="<%=objProgramacionExamenBean.getFECHA()%>">
                </td>
            </tr>
            <tr style="display: none">
                <td class="text_normal">Día :</td>
                <td>
                    <select name="cbodia"  id="cbodia" onchange="cargarHorarios('<%=request.getContextPath()%>')">
                        <option value="0">-Seleccionar Día-</option>
                        <% for (DiaBean obj : listadia) {%>
                            <% if (obj.getCODDIA()== objHorariodeLaboratorioDisponiblesBean.getCODDIA()) {%>
                                <option value="<%=obj.getCODDIA()%>" selected><%=obj.getNOMBDIA()%></option>
                            <%} else {%>
                                <option value="<%=obj.getCODDIA()%>"><%=obj.getNOMBDIA()%></option>
                            <%}%>
                        <% }%>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Turno :</td>
                <td>
                    <select name="cboturno"  id="cboturno" onchange="cargarHorarios('<%=request.getContextPath()%>')">
                        <option value="0">-Seleccionar Turno-</option>
                        <% for (TurnoBean obj : listaturno) {%>
                            <% if (obj.getCODTURNO()== objHorariodeLaboratorioDisponiblesBean.getCODTURNO()) {%>
                                <option value="<%=obj.getCODTURNO()%>" selected><%=obj.getNOMBTURNO()%></option>
                            <%} else {%>
                                <option value="<%=obj.getCODTURNO()%>"><%=obj.getNOMBTURNO()%></option>
                            <%}%>
                        <% }%>
                    </select>
                </td>
            </tr>
        </table>
        <div id="divtabla">
            <div style="padding: 5px auto 5px auto; margin-top: 10px;width: 95%; background: #E7E4E6;">
                <div id="divlistadoHorario">
                    <table id="listadoHorario" class="display" cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Laboratorio</th>
                                <th>Dia</th>
                                <th>Horario</th>                                    
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Laboratorio</th>
                                <th>Dia</th>
                                <th>Horario</th>                                    
                                <th>&nbsp;</th>
                            </tr>
                        </tfoot>   
                    </table>
                </div>        
            </div>
        </div>
        <br/>
    </center>  
</div>
