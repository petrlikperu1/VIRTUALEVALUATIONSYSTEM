<%@page import="BEAN.TemaBean" %>
<%!
   TemaBean  objTemaBean=null;
%>

<% 
   objTemaBean=(TemaBean)request.getAttribute("datos");
 %>   

<html>  
    <body onload="load()">      
        <form  name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="hddcodigo"   id="hddcodigo" value="<%=objTemaBean.getCODTEMA()%>">
            <input type="hidden" name="hddcarrera"  id="hddcarrera" value="<%=objTemaBean.getCODCARRERA()%>">
            <input type="hidden" name="hddmateria"  id="hddmateria" value="<%=objTemaBean.getCODMATERIA()%>">
            <input type="hidden" name="hddunidadtematica" id="hddunidadtematica" value="<%=objTemaBean.getCODUNIDTEMA()%>">
            <center>
                <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla" >
                    <td >Modificar Tabla Tema</td>
                </tr>
            </table>
                <table width="300" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" disabled="false" value="<%=objTemaBean.getCODTEMA()%>"></td>
                    </tr>
                    </tr>
                        <td class="text_normal">Carrera Profesional :</td>
                        <td><input type="text" name="txtcarrera" disabled="false" value="<%=objTemaBean.getNOMBCARRERA()%>"></td>
                    </tr>
                    </tr>
                        <td class="text_normal">Materia :</td>
                        <td><input type="text" name="txtmateria" disabled="false" value="<%=objTemaBean.getNOMBMATERIA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Unidad Temática :</td>
                        <td><input type="text" name="txtunidadtematica" disabled="false" value="<%=objTemaBean.getNOMBUNIDTEMA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Tema :</td>
                        <td><input type="text" name="txtnombre"  id="txtnombre" placeholder="Ingrese nombre..." class="input_text" value="<%=objTemaBean.getNOMBTEMA()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Estado :</td>
                        <td>
                            <select name="cboestado" id="cboestado">
                            <% if(objTemaBean.getESTADO().equals("A")){ %>
                                <option value="A" selected="selected">HABILITADO</option>
                                <option value="I">DESABILITADO</option>
                            <% }else{ %>
                                <option value="A">HABILITADO</option>
                                <option value="I" selected="selected">DESABILITADO</option>
                            <% } %>
                            </select>
                        </td>
                    </tr>
                </table>
               <table border="0">
                    <tr>
                           <td>
                            <input type="button"  onclick="ModificarTema('<%=objTemaBean.getCODTEMA()%>','<%=request.getContextPath()%>')" value="Modificar" style="height:28px;
                                                                                                                                                                        width:80px;" /></td>
                           </td>
                        <td>
                            <input type="button"  onclick="salir('<%=request.getContextPath()%>','Tema',5,'')" value="Salir" style="height:28px;
                                                                                                                                        width:80px;" />
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
                
            </center>
        </form>
        
    </body>
</html>