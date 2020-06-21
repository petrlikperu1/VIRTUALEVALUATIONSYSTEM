<%@page import="java.util.ArrayList" %>
<%@page import="BEAN.UnidadTematicaBean" %>
<%!
   ArrayList<UnidadTematicaBean> listaUnidadTematica;
    String  ruta="";
%>
<% 
   listaUnidadTematica =(ArrayList<UnidadTematicaBean>)request.getAttribute("listaUnidadTematica");
   int i=0;
 %> 
<html>
    <body>
        
            <form name="form">
            <input type="hidden" name="op">           
            <center>
                  <table width="100%" border="0" class="FondoTabla">
                <tr class="tituloTabla">
                    <td>Mantenimiento de la Tabla Unidad Temática</td>
                </tr>
            </table>
                <table width="90%" class="FondoTabla">
                    <tr>
                        <td>
                         <input  type="button" value="Nuevo"  onclick="nuevo('<%=request.getContextPath()%>','UnidadTematica',3,'')"   style="height:40px;
                                                                                                                                      width:200px;">   
                            </td>
                        <td colspan="5"></td>
                      
                    </tr>
                </table>
                <div style="padding: 5px auto 5px auto; width: 90%; background: #E7E4E6;">
                    <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th data-visible="false">Codigo</th>
                                <th>Carrera Profesional</th>
                                <th>Materia</th>
                                <th>UnidadTematica</th>
                                <th>Estado</th>
                                <th>Eliminar</th>
                                <th>Modificar</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Codigo</th>
                                <th>Carrera Profesional</th>
                                <th>Materia</th>
                                <th>UnidadTematica</th>
                                <th>Estado</th>
                                <th>Eliminar</th>
                                <th>Modificar</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%  for(UnidadTematicaBean obj:listaUnidadTematica){
                                ruta="CODIGO="+obj.getCODUNIDTEMA()+"&CARRERA="+obj.getCODCARRERA()+"&MATERIA="+obj.getCODMATERIA();
                            %>
                            <tr>
                                <td><%=obj.getCODUNIDTEMA()%></td>
                                <td><%=obj.getNOMBCARRERA()%></td>
                                <td><%=obj.getNOMBMATERIA()%></td>
                                <td><%=obj.getNOMBUNIDTEMA()%></td>
                                <td>
                                    <% if(obj.getESTADO().equals("A")){ %>
                                        HABILITADO
                                    <% }else{ %>
                                        <font color='red'>
                                        DESABILITADO
                                        </font>
                                    <% } %>
                                </td>
                                <td><center><input  type="button" value="Modificar"  onclick="modificar('<%=request.getContextPath()%>','UnidadTematica',6,'<%=ruta%>')"   style="height:20px;
                                                                                                                                      width:80px;"></center></td>
                            <td><center>
                                    <% if (obj.getOFFSPRING() == 0){ %>
                                    <input  type="button" value="Eliminar"  onclick="eliminar('<%=request.getContextPath()%>','UnidadTematica',8,'<%=ruta%>')"   style="height:20px;
                                                                                                                                      width:80px;">
                                    <% }else{ %>
                                    <input  type="button" value="Eliminar"  onclick="alert('Desabilitado por Integridad Referencial.'); return false;"   style="height:20px;
                                                                                                                                      width:80px;">
                                    
                                    <% } %>
                                </center></td>
                            </tr>
                          <% } %>
                        </tbody>
                </table>
                </div>
            </center>
        </form>         
    </body>
</html>



