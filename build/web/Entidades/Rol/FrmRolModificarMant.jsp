<%@page import="BEAN.RolBean" %>
<%!
    RolBean objRolBean=null;
%>
<%
    objRolBean=(RolBean)request.getAttribute("datos");
%> 
<html>    
    <body onload="cargarFoco()">
        
        <form name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="hddcodigo" value="<%=objRolBean.getCODROL()%>">
            <center>
                <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla">
                    <td>Modificar Rol</td>
                </tr>
                </table>
                <table width="300" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" disabled="false" value="<%=objRolBean.getCODROL()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Nombre :</td>
                        <td><input type="text" name="txtnombre" id="txtnombre" placeholder="Ingrese nombre" class="input_text" value="<%=objRolBean.getNOMBROL()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Estado :</td>
                        <td>
                            <%
                            String verA="";
                            String verI="";
                            if(objRolBean.getESTADO().equals("A")) verA="selected='selected'";
                            else verI="selected='selected'";
                            %>
                            <select name="cboestado" id="cboestado">
                                <option <%=verA%> value="A">HABILITADO</option>
                                <option <%=verI%> value="I">DESABILITADO</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <table border="0">
                    <tr>
                           <td>
                            <input type="button"  onclick="ModificarRol('<%=objRolBean.getCODROL()%>','<%=request.getContextPath()%>')" value="Modificar" style="height:28px;
                                                                                                                                                                        width:80px;" /></td>
                           </td>
                        <td>
                            <input type="button"  onclick="salir('<%=request.getContextPath()%>','Rol',5,'')" value="Salir" style="height:28px;
                                                                                                                                        width:80px;" />
                        </td>
                    </tr>
                </table>
                <font color="red">
                <%
                  if(request.getAttribute("mensaje")!=null){
                      String msj=(String)request.getAttribute("mensaje");
                      out.print(msj);
                  }
                %>
                </font> 
            </center>
        </form>
               
    </body>
</html>
