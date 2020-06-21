<%@page import="BEAN.AyudaBean"%>
<%@page import="BEAN.PreguntaBean"%>
<%@page import="java.util.ArrayList" %>
<%!
    ArrayList<PreguntaBean> listaPregunta;
%>
<%
    listaPregunta = (ArrayList<PreguntaBean>) request.getAttribute("listaPregunta");
    int i = 0;
%> 
<html>
    <body>
      
            <center>
                <table width="100%" border="0" class="FondoTabla">
                    <tr class="tituloTabla">
                        <td>Registrar Pregunta Examen Training</td>
                    </tr>
                </table>
                <table width="90%" class="FondoTabla">
                    <tr>
                        <td><button   onclick="nuevo('<%=request.getContextPath()%>','Pregunta',14,'')"   style="width:100px;"><img  width="50px"  height="50px" src="<%=request.getContextPath()%>/imagenes/nuevopreguntatraining.png">Nuevo</button></td>                           
                    </tr>
                </table>
                <div style="padding: 5px auto 5px auto; width: 90%; background: #E7E4E6;">
                    <table id="listado" class="display" cellspacing="0" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Pregunta</th>                                    
                                <th>Carrera</th>
                                <th>Materia</th>
                                <th>Unidad</th>
                                <th>Tema</th>
                                <th>Nivel de Dificultad</th>
                                <th>Modificar</th>
                                <th>Eliminar</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Código</th>
                                <th>Pregunta</th>
                                <th>Carrera</th>
                                <th>Materia</th>
                                <th>Unidad</th>
                                <th>Tema</th>
                                <th>Nivel de Dificultad</th>                                   
                                <th>Modificar</th>
                                <th>Eliminar</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <%  for (PreguntaBean obj : listaPregunta) {%>
                            <tr>
                                <td><%=obj.getCODPREG()%></td>
                                <td><%=obj.getENUNCIADOPREG()%></td>
                                <td><%=obj.getNOMBCARRERA()%></td>
                                <td><%=obj.getNOMBMATERIA()%></td>
                                <td><%=obj.getNOMBUNIDTEMA()%></td>
                                <td><%=obj.getNOMBTEMA()%></td>
                                <td><%=obj.getNOMBNIVEL()%></td>   
                                <td>
                                    <center>
                                        <button type="button" onclick="modificar('<%=request.getContextPath()%>','Pregunta',16,'CODPREG=<%=obj.getCODPREG()%>')">
                                        <img src="<%=request.getContextPath()%>/imagenes/modificar.jpg" width="20" height="20">Modificar
                                        </button>
                                    </center>
                                </td>
                                <td>
                                    <center>
                                        <button type="button" onclick="eliminar('<%=request.getContextPath()%>','Pregunta',19,'CODPREG=<%=obj.getCODPREG()%>')">
                                            <img src="<%=request.getContextPath()%>/imagenes/eliminar.jpg" width="20" height="20">Eliminar
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