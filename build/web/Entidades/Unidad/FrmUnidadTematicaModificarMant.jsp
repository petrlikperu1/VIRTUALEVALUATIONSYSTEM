<%@page import="BEAN.UnidadTematicaBean" %>
<%@page import="java.util.ArrayList" %>
<%!
   UnidadTematicaBean  objUnidadTematicaBean=null;
%>

<% 
   objUnidadTematicaBean=(UnidadTematicaBean)request.getAttribute("datos");
 %>   

<html>   
    <body onload="load()">      
        <form  name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="hddcodigo"  id="hddcodigo"  value="<%=objUnidadTematicaBean.getCODUNIDTEMA()%>">
            <input type="hidden" name="hddcarrera" id="hddcarrera"  value="<%=objUnidadTematicaBean.getCODCARRERA()%>">
            <input type="hidden" name="hddmateria" id="hddmateria"  value="<%=objUnidadTematicaBean.getCODMATERIA()%>">
            <center>
                <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla" >
                    <td >Modificar Tabla Unidad Temática</td>
                </tr>
            </table>
                <table border="0" width="400px" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" id="txtcodigo" disabled="false" value="<%=objUnidadTematicaBean.getCODUNIDTEMA()%>"></td>
                    </tr>
                        <td class="text_normal">Carrera Profesional :</td>
                        <td><input type="text" name="txtcarrera" id="txtcarrera" disabled="false" value="<%=objUnidadTematicaBean.getNOMBCARRERA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Materia :</td>
                        <td><input type="text" name="txtmateria" id="txtmateria" disabled="false" value="<%=objUnidadTematicaBean.getNOMBMATERIA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Unidad Temática :</td>
                        <td><input type="text" name="txtnombre" id="txtnombre" placeholder="Ingrese nombre... " class="input_text" value="<%=objUnidadTematicaBean.getNOMBUNIDTEMA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Estado :</td>
                        <td>
                            <select name="cboestado" id="cboestado">
                                <%  if(objUnidadTematicaBean.getESTADO().equals("A")){ %>
                                    <option value="A" selected>HABILITADO</option>
                                    <option value="I" >DESABILITADO</option>     
                                <% }else{ %>
                                    <option value="I" selected>DESABILITADO</option>
                                    <option value="A" >HABILITADO</option> 
                                <%   }   %>
                            </select>
                        </td>
                    </tr>
                </table>
                 <table border="0">
                    <tr>
                           <td>
                            <input type="button"  onclick="ModificarUnidadTematica('<%=objUnidadTematicaBean.getCODUNIDTEMA()%>','<%=request.getContextPath()%>')" value="Modificar" style="height:28px;
                                                                                                                                                                        width:80px;" /></td>
                           </td>
                        <td>
                            <input type="button"  onclick="salir('<%=request.getContextPath()%>','UnidadTematica',5,'')" value="Salir" style="height:28px;
                                                                                                                                        width:80px;" />
                        </td>
                    </tr>
                </table>
                <font color="red">
                <%
                  if(request.getAttribute("mensaje")!=null)
                  {
                      String  msj=(String)request.getAttribute("mensaje");
                      out.print(msj);
                  }
                %>
                </font> 
                
            </center>
        </form>
      
    </body>
</html>