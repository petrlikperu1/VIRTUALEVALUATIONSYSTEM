<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.*"%>
<%!
    ProgramacionMateriaBean objProgramacionMateriaBean;

    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;
    ArrayList<SemestreBean> listaSemestreBean = null;
%>
<%
    objProgramacionMateriaBean = (ProgramacionMateriaBean) request.getAttribute("objProgramacionMateriaBean");
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaSemestreBean = (ArrayList<SemestreBean>) request.getAttribute("listaSemestreBean");
%>
<div id="ModalProgramacionMateria" style="display: none">

    <input type="hidden" id="hddCODPROGRAMAT" name="hddCODPROGRAMAT"  value="<%=objProgramacionMateriaBean.getCODPROGRAMAT()%>">
    <input type="hidden" id="hddCODCARRERA" name="hddCODCARRERA"  value="<%=objProgramacionMateriaBean.getCODCARRERA()%>">
    <input type="hidden" id="hddCODMATERIA" name="hddCODMATERIA"  value="<%=objProgramacionMateriaBean.getCODMATERIA()%>">
    <input type="hidden" id="hddCODDOCENTE" name="hddCODDOCENTE"  value="<%=objProgramacionMateriaBean.getCODDOCENTE()%>">
    <input type="hidden" id="hddCODSEMESTRE" name="hddCODSEMESTRE"  value="<%=objProgramacionMateriaBean.getCODSEMESTRE()%>">

     <table width="100%" border="0" class="FondoTabla"  >
        <tr class="tituloFormulario">
            <td >Semestre Academico :</td>
            <td>
                <select  name="cbosemestre1" id="cbosemestre1" onchange="FiltrarDocentesProgramarMateria('<%=request.getContextPath()%>')">
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
                <select  name="cbocarrera1" id="cbocarrera1" onchange="cargarMateria('<%=request.getContextPath()%>', 'Materia', 11, this.value,0,'divmateria2'),
                                                                     FiltrarDocentesProgramarMateria('<%=request.getContextPath()%>');
                                                                     AsignarFiltroDocenteMateria('<%=request.getContextPath()%>')">
                    <option value="0" selected>-Seleccional Carrera-</option>
                    <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                    <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                    <% }%>
                </select>
            </td>
        </tr>
        <tr class="tituloFormulario">
            <td >Materia :</td>
            <td>
                <div id="divmateria2">
                    <select name="cbomateria" id="cbomateria">
                        <option value="0" selected>---------------------</option>
                    </select> 
                </div>
            </td>
        </tr>
        <tr class="tituloFormulario">
            <td >Docente :</td>
            <td> 
                <div id="divDocente">
                    <select name="cboDocente" id="cboDocente">
                        <option value="0" selected>---------------------</option>
                    </select> 
                </div>
            </td>     
        </tr>
    </table>
</div>