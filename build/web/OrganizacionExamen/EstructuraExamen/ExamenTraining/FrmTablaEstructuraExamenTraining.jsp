<%@page import="BEAN.*"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<EstructuraExamenBean> listaEstructuraExamen;
  %>
<%  
    listaEstructuraExamen = (ArrayList<EstructuraExamenBean>) request.getAttribute("listaEstructuraExamen");     
%>
<html>
    <body>
                   <center>
                        <div style="padding: 5px auto 5px auto; width:95%; background: #E7E4E6;">
                            <table id="listado" class="display" cellspacing="0" cellpadding="0" width="95%">
                                <thead>
                                    <tr>
                                    <th>Codigo Estructura</th>
                                    <th>Semestre</th>
                                    <th>Carrera</th>                                    
                                    <th>Materia</th>
                                    <th>Tipo Examen</th>
                                   
                                    <th>Estado</th>                                                         
                                    <th>Modificar</th>
                                    <th>Dar Baja</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                    <th>Codigo Estructura</th>
                                    <th>Semestre</th>
                                    <th>Carrera</th>                                    
                                    <th>Materia</th>
                                    <th>Tipo Examen</th>
                                   
                                    <th>Estado</th>                                                       
                                    <th>Modificar</th>
                                    <th>Dar Baja</th>
                                    </tr>
                                </tfoot>                              
                                <tbody>
                                    <%  for (EstructuraExamenBean obj : listaEstructuraExamen) {%>
                                    <tr>
                                     <td><%=obj.getCODESTRUCEXAMEN()%></td>
                                    <td><%=obj.getNOMBSEMESTRE()%></td>
                                    <td><%=obj.getNOMBCARRERA()%></td>
                                    <td><%=obj.getNOMBMATERIA()%></td>
                                    <td><%=obj.getNOMBTIPEXAMEN()%></td>
                                    <td>
                                        
                                                    <%  if(obj.getESTADO().equals("A")){ %>

                                                            <%="HABILITADO"%>

                                                    <% }else{     %>
                                                       <%="   DESAHABILITADO"%>

                                                    <%   }   %>
                                        
                                        
                                    </td>                                                                  
                                    <td>
                                    <center>
                                        <button type="button" onclick="cargarEstructuraExamen('<%=request.getContextPath()%>','<%=obj.getCODESTRUCEXAMEN()%>',
                                                                                              '<%=obj.getCODSEMESTRE()%>','<%=obj.getCODCARRERA()%>',
                                                                                              '<%=obj.getCODMATERIA()%>','<%=obj.getCODUNIDAD()%>',
                                                                                              '<%=obj.getCODTEMA()%>','<%=obj.getCODTIPEXAMEN()%>')">
                                        <img src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">Modificar
                                        </button>
                                    </center>
                                </td>
                                <td>
                                    <center>
                                        <button type="button" onclick="">
                                            <img src="<%=request.getContextPath()%>/imagenes/eliminar.png" width="20" height="20">Eliminar
                                        </button>
                                    </center>
                                </td>
                                    </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                    </center>
    </body>
</html>