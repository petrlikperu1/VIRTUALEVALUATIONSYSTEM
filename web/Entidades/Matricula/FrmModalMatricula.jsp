<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.*"%>
<%!
    MatriculaBean objMatriculaBean;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;
    ArrayList<SemestreBean> listaSemestreBean = null;
    ArrayList<AlumnoBean> listaAlumno=null;
    ArrayList<ProgramacionMateriaBean> listaProgramacionMateria=null;
%>
<%
    objMatriculaBean = (MatriculaBean) request.getAttribute("objMatriculaBean");
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaSemestreBean = (ArrayList<SemestreBean>) request.getAttribute("listaSemestre");
    listaAlumno= (ArrayList<AlumnoBean>) request.getAttribute("listaAlumno");
    listaProgramacionMateria= (ArrayList<ProgramacionMateriaBean>) request.getAttribute("listaProgramacionMateria");
%>
<div id="ModalMatricula" style="display: none">

    <input type="hidden" id="hddCODMATRICULA" name="hddCODMATRICULA"  value="<%=objMatriculaBean.getCODMATRICULA()%>">
    <input type="hidden" id="hddCODALU" name="hddCODALU"  value="<%=objMatriculaBean.getCODALU()%>">
    <input type="hidden" id="hddCODSEMESTRE" name="hddCODSEMESTRE"  value="<%=objMatriculaBean.getCODSEMESTRE()%>">
    <input type="hidden" id="hddFECHAMATRICULA" name="hddFECHAMATRICULA"  value="<%=objMatriculaBean.getFECHAMATRICULA()%>">
    <input type="hidden" id="hddCODCARRERAPROFECIONAL" name="hddCODCARRERAPROFECIONAL"  value="<%=objMatriculaBean.getCODCARRERAPROFECIONAL()%>">
    <center>
        <table width="360px" style="padding:10px" border="0" class="FondoTabla">
            <tr class="tituloFormulario">
                <td >Alumno:</td>
                <td>
                    <select name="cboAlumno" id="cboAlumno">
                        <option value="0" selected>---------------------</option>
                         <% for (AlumnoBean obj : listaAlumno) {%>
                        <option value="<%=obj.getCODALU()%>"><%=obj.getNOMBALU()+" " +obj.getAPEPATERALU()%></option>
                        <% }%>
                    </select> 
                </td>
            </tr>
            <tr class="tituloFormulario">
                <td >Semestre Academico :</td>
                <td>
                    <select  name="cbosemestre1" id="cbosemestre1" onchange="FiltrarCarrerasMatricula('<%=request.getContextPath()%>');
                            <%--FiltrarMateriaMatricula('<%=request.getContextPath()%>');
                            FiltrarDocentesMatricula('<%=request.getContextPath()%>')--%>
                                                    ">
                        <option value="0" selected>-Seleccional Semestre-</option>
                        <% for (SemestreBean obj : listaSemestreBean) {%>
                        <option value="<%=obj.getCODSEMESTRE()%>"><%=obj.getNOMBSEMESTRE()%></option>
                        <% }%>
                    </select>
                </td>
            </tr>
            <tr class="tituloFormulario">
                <td >Carrera :</td>
                <td>
                    <div id="divCarrera">
                        <select  name="cbocarrera1" id="cbocarrera1" <%--  onchange="FiltrarMateriaMatricula('<%=request.getContextPath()%>'),
                                        FiltrarDocentesMatricula('<%=request.getContextPath()%>');"--%>>
                            <option value="0" selected>-Seleccional Carrera-</option>
                        </select>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
            <center>
                <button style="margin-top: 10px;" onclick="GuardarCabeseraMatricula('<%=request.getContextPath()%>');" id="btnGuardarCabesera" type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button">
                    <span class="ui-button-text">
                        Guardar
                    </span>
                </button>
            </center>
            </td>
            </tr>
        </table>
        <div id='divMarcoLogico' style="visibility:visible;display:block;">
            <table  align="center"   width="360px" border="0" class="FondoTabla">
                <thead>
                    <tr class="tituloTabla" >
                        <td   align="center">Materia </td>
                        <td   align="center">Docente</td>
                        <td   align="center">&nbsp; </td>
                    </tr>    
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div id="divMateriaMatricula">
                                <select name="cboMateria" disabled  id="cboMateria" onchange="FiltrarDocentesMatricula('<%=request.getContextPath()%>')">
                                    <option value="0" selected>---------------------</option>
                                </select> 
                            </div>
                        </td>
                        <td  align="center"  >
                            <select  name="cboDocente" disabled id="cboDocente" class="input_text"   >
                                <option value="0">--------</option>
                            </select>                         
                        </td>
                        <td  align="center">
                            <center>
                                <button type="button" disabled id="btnGuardarDetalle" onclick="AsignarMateria('<%=request.getContextPath()%>')" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button">
                                    <span class="ui-button-text">
                                        Agregar
                                    </span>
                                </button>
                            </center>
                        </td>
                </tr>
                <tr>                 
                    <td colspan="10"><hr> </td>                   
                </tr>
                </tbody>
                <tbody id="MateriasMatriculadas">
                    <%for(ProgramacionMateriaBean obj:listaProgramacionMateria){%>
                    <tr id="<%=obj.getCODMATERIA()%>" data-nombre="<%=obj.getNOMBREMATERIA()%>">
                        <td>
                            <input type='hidden' name='hddMateria' value='<%=obj.getCODMATERIA()%>'>
                            <input type='text' name='txtMateria' disabled value='<%=obj.getNOMBREMATERIA()%>'>
                        </td>
                        <td>
                            <input type='hidden' name='hddDocente' value='<%=obj.getCODDOCENTE()%>'>
                            <input type='text' name='txtDocente' disabled value='<%=obj.getNOMBREDOCENTE()%>'>
                        </td>
                        <td align='center'>
                            <button onclick='retirarItemDetalleMatricula(this);' title='Eliminar Fila'>
                                <img src='images/tacho.gif' border='0'>
                            </button>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
       	</div>
        <%--    <div id="divtabla">
                <div style="padding: 5px auto 5px auto; margin-top: 10px;width: 95%; background: #E7E4E6;">
                    <div id="divlistadoHorario">
                        <table id="listadoHorario" class="display" cellspacing="0" cellpadding="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Materia</th>
                                    <th>Docente</th>
                                    <th data-order="false"></th>                                    
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>Materia</th>
                                    <th>Docente</th>
                                    <th></th>                                            
                                </tr>
                            </tfoot> 
                            <tbody>
                                <tr>
                                    <td>
                                        <div id="divMateriaMatricula">
                                            <select id="cboMatriculaMateria" name="cboMatriculaMateria">
                                                <option value="0" selected>---------------------</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div id="divDocenteMatricula">
                                            <select id="cboDocenteMateria" name="cboDocenteMateria">
                                                <option value="0" selected>---------------------</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <button style="margin-top: 10px;" type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button"><span class="ui-button-text">Guardar</span></button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>        
                </div>
            </div>--%>
        <br/>
    </center>
</div>