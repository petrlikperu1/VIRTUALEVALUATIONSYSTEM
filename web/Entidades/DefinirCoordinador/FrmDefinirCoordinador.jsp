<%@page import="BEAN.CarreraProfesionalBean" %>
<%@page import="BEAN.RolxDocenteBean" %>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<CarreraProfesionalBean>   listaCarreraProfesional;
    ArrayList<RolxDocenteBean>          listaRolxdocente;
%>
<%
    listaCarreraProfesional=(ArrayList<CarreraProfesionalBean>)request.getAttribute("listaCarreraProfesional");
    listaRolxdocente=(ArrayList<RolxDocenteBean>)request.getAttribute("listaRolxdocente");
    int i=0;
%>
<html>  
  <body>     
       <center>
        <form name="form">
        <input type="hidden" name="op"/>
        <input type="hidden" name="hddcodigo" id="hddcodigo"/>
        <table width="100%" border="0" class="FondoTabla">
            <tr class="tituloTabla">
                <td><h3>DEFINIR COORDINADOR DE LA MATERIA</h3></td>
            </tr>
        </table>
        <table width="300px" class="FondoTabla">
            <tr>
            <td class="text_normal">Carrera Profesional :</td>
                <td>
                    <select  name="cbocarrera" id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>','Materia',13,this.value)">
                        <option value="0" selected>-Seleccional Carrera-</option>
                        <% for(CarreraProfesionalBean obj:listaCarreraProfesional){ %>
                        <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                        <% } %>
                    </select> 
                </td>
            </tr>
            <tr>
                <td class="text_normal">Materia :</td>
                <td>
                    <div id="divmateria">
                    <select name="cbomateria" id="cbomateria">
                        <option value="0">---------------------</option>
                    </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="text_normal">Docente :</td>
                <td>
                    <div id="divdocente">
                    <select name="cbodocente" id="cbodocente">
                        <option value="0">---------------------</option>
                    </select>
                    </div>
                </td>
            </tr>
        </table>
        </form>
        <table class="FondoTabla">
            <tr>
                <td>
                    <input id="btnNuevo" class="boton" value="Nuevo" onclick="nuevoCoordinador('<%=request.getContextPath()%>')" width="20px" />
                </td>
                <td>
                    <input id="btnGuardar" value="Guardar" class="boton" onclick="guardarCoordinador('','<%=request.getContextPath()%>')" width="20px"  />
                    <input id="btnActualizar" value="Actualizar" class="boton" onclick="actualizarCoordinador('<%=request.getContextPath()%>')" style="display: none;" width="20px"  />
                </td>
            </tr>
        </table>
        <font color="red">
        <%
          if(request.getAttribute("mensaje")!=null){
              String  msj=(String)request.getAttribute("mensaje");
              out.print(msj);
          }
        %>
        </font> 
        <div style="padding: 5px auto 5px auto; width: 90%; background: #E7E4E6;">
                <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                    <thead>
                        <tr>
                            <th data-visible="false">Nro</th>
                            <th>Carrera Profesional</th>
                            <th>Materia</th>
                            <th>Docente</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Nro</th>
                            <th>Carrera Profesional</th>
                            <th>Materia</th>
                            <th>Docente</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <%  for(RolxDocenteBean obj:listaRolxdocente){ %>
                        <tr>
                            <td><%=obj.getCODROLXDOCENTE()%></td>
                            <td><%=obj.getNOMBCARRERA()%></td>
                            <td><%=obj.getNOMBMATERIA()%></td>
                            <td><%=obj.getNOMBDOCENTE()%></td>
                            <td><center><input type="button" value="Modificar" onclick="modificarCoordinador('<%=request.getContextPath()%>','<%=obj.getCODROLXDOCENTE()%>','<%=obj.getCODCARRERA()%>','<%=obj.getCODMATERIA()%>','<%=obj.getCODDOCENTE()%>')" />
                                      
                                   </center></td>
                            <td><center><input type="button"  onclick="eliminarCoordinador('<%=request.getContextPath()%>', '<%=obj.getCODROLXDOCENTE()%>')" value="Eliminar" />
                                      </center></td>
                        </tr>
                        <%  } %>
                    </tbody>
        </table>
        </div>
    </center>   
  </body>
</html>