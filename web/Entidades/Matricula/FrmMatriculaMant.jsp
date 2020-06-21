<%@page import="BEAN.MatriculaBean"%>
<%@page import="BEAN.SemestreBean"%>
<%@page import="BEAN.CarreraProfesionalBean"%>
<%@page import="UTIL.Constantes" %>
<%@page import="java.util.ArrayList" %>
<%@page import="BEAN.MateriaBean" %>
<%!
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional;
    ArrayList<SemestreBean> listaSemestre;
    ArrayList<MatriculaBean> listaMatricula;
    String ruta = "";
%>
<%
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaSemestre = (ArrayList<SemestreBean>) request.getAttribute("listaSemestre");
    listaMatricula = (ArrayList<MatriculaBean>) request.getAttribute("listaMatricula");
    int i = 0;
%>   
<html>   
    <body>       
            
            <center>
                <table width="100%" border="0" class="FondoTabla">
                    <tr class="tituloTabla">
                        <td>Matricula</td>
                    </tr>
                </table>
                <br>
                <table class="FondoTabla" style="padding: 10px">
                    <tr class="tituloFormulario">
                        <td >Semestre Academico :</td>
                        <td>
                            <select  name="cbosemestre" id="cbosemestre" onchange="filtrarMatriculas('<%=request.getContextPath()%>', 'Matricula', 12)">
                                <option value="0">---------------------</option>
                                <% for (SemestreBean obj1 : listaSemestre) {%>
                                <option value="<%=obj1.getCODSEMESTRE()%>"><%=obj1.getNOMBSEMESTRE()%></option>
                                <% }%>
                            </select> 
                        </td>
                    </tr>
                    <tr class="tituloFormulario">
                        <td >Carrera Profesional :</td>
                        <td>
                            <select  name="cbocarrera" id="cbocarrera"  onchange="filtrarMatriculas('<%=request.getContextPath()%>', 'Matricula', 12)">
                                <option value="0">---------------------</option>
                                <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                                <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                <% }%>
                            </select> 
                        </td>
                    </tr>
                </table>
                <br>
                <center>
                    <input  type="button" value="Nuevo"  onclick="nuevaMatricula('<%=request.getContextPath()%>', 0)"   style="height:40px;width:200px;">   
                </center>
                <br>
                <div id="divTableMatricula" style="padding: 5px auto 5px auto; width: 90%; background: #E7E4E6;">
                    <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th data-visible="false">Codigo</th>
                                <th>Carrera</th>
                                <th>Semestre</th>
                                <th>Alumno</th>
                                <th>Fecha Matricula</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Codigo</th>
                                <th>Carrera</th>
                                <th>Semestre</th>
                                <th>Alumno</th>
                                <th>Fecha Matricula</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%  for (MatriculaBean obj : listaMatricula) {
                            %>  
                            <tr>
                                <td><%=obj.getCODMATRICULA()%></td>
                                <td><%=obj.getNOMBRECARRERAPROFECIONAL()%></td>
                                <td><%=obj.getNOMBRESEMESTRE()%></td>
                                <td><%=obj.getNOMBREALUMNO()%></td>
                                <td><%=obj.getFECHAMATRICULA()%></td>
                                <td>
                        <center>
                            <input  type="button" value="Modificar"  onclick="nuevaMatricula('<%=request.getContextPath()%>', '<%=obj.getCODMATRICULA()%>')"   style="height:20px;width:80px;">
                        </center>
                        </td>
                        <td>
                        <center>
                            <input  type="button" value="Eliminar"  onclick="eliminar('<%=request.getContextPath()%>', 'Materia', 8, '<%=ruta%>')"   style="height:20px;width:80px;">
                        </center>
                        </td>
                        </tr>
                        <%  }%>   
                        </tbody>
                    </table>
                </div>
                <br/>
            </center>
    <div id="DivModal">
        
    </div>
        
        
    </body>
</html>
