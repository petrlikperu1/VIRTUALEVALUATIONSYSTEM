<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BEAN.*"%>
<%!
    DocentexMateriaBean objDocentexMateriaBean;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;
    ArrayList<DocenteBean> listaDocenteBean = null;
%>
<%
    objDocentexMateriaBean = (DocentexMateriaBean) request.getAttribute("objDocentexMateriaBean");
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaDocenteBean = (ArrayList<DocenteBean>) request.getAttribute("listaDocenteBean");
%>
<div id="ModalDocenteMateria" style="display: none">
    <input type="hidden" id="hddCODDOCENTEXMATERIA" name="hddCODDOCENTEXMATERIA"  value="<%=objDocentexMateriaBean.getCODDOCENXMATERIA()%>">
    <input type="hidden" id="hddCODCARRERA" name="hddCODCARRERA"  value="<%=objDocentexMateriaBean.getCODCARRERA()%>">
    <input type="hidden" id="hddCODMATERIA" name="hddCODMATERIA"  value="<%=objDocentexMateriaBean.getCODMATERIA()%>">
    <input type="hidden" id="hddCODDOCENTE" name="hddCODDOCENTE"  value="<%=objDocentexMateriaBean.getCODDOCENTE()%>">
    <table border="0" align="center" >
        <tr class="tituloFormulario">
            <td >Carrera :</td>
            <td>
                <select  name="cbocarrera" id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>', 'Materia', 11, this.value)">
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
                <div id="divmateria">
                    <select name="cbomateria" id="cbomateria">
                        <option value="0" selected>---------------------</option>
                    </select> 
                </div>
            </td>
        </tr>
        <tr class="tituloFormulario">
            <td >Docente :</td>
            <td> 
                <div id="divmateria">
                    <div id="divDocente">
                        <select name="cboDocente" id="cboDocente">
                            <option value="0" selected>---------------------</option>
                            <% for (DocenteBean obj : listaDocenteBean) {%>
                            <option value="<%=obj.getCODDOCENTE()%>"><%=obj.getNOMBDOCENTE()+" "+obj.getAPEPATERDOCENTE()%></option>
                            <% }%>
                        </select> 
                    </div>
                </div>
            </td>     
        </tr>
    </table>
</div>