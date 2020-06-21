<%@page import="BEAN.SemestreBean" %>
<%!
    SemestreBean  objSemestreBean=null;
%>
<% 
  objSemestreBean=(SemestreBean)request.getAttribute("datos");
%>
<html>
    <head>  
    </head>
    <body onload="cargarFoco()">
              
        
        <form name="form">            
            <center>
                <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla">
                    <td>Modificar Tabla Semestre</td>
                </tr>
                </table>
                <table width="300" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" disabled="false" value="<%=objSemestreBean.getCODSEMESTRE()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Nombre :</td>
                        <td><input type="text" name="txtnombre" placeholder="Ingrese Nombre..." class="input_text" value="<%=objSemestreBean.getNOMBSEMESTRE()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Fecha Inicio :</td>
                        <td><input type="text" name="txtfechainicio" placeholder="dd/mm/aaaa" class="input_text" value="<%=objSemestreBean.getFECHAINICIO()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Fecha Fin :</td>
                        <td><input type="text" name="txtfechafin" placeholder="dd/mm/aaaa" class="input_text" value="<%=objSemestreBean.getFECHAFIN()%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Estado :</td>
                        <td>
                            <%
                            String verA="";
                            String verI="";
                            if(objSemestreBean.getESTADO().equals("A")) verA="selected='selected'";
                            else verI="selected='selected'";
                            %>
                            <select name="cboestado">
                                <option <%=verA%> value="A">HABILITADO</option>
                                <option <%=verI%> value="I">DESABILITADO</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <table border="0">
                    <tr>
                           <td>
                            <input type="button"  onclick="modificarSemestre('<%=objSemestreBean.getCODSEMESTRE()%>','<%=request.getContextPath()%>')" value="Modificar" style="height:28px;
                                                                                                                                                                        width:80px;" /></td>
                           </td>
                        <td>
                            <input type="button"  onclick="salir('<%=request.getContextPath()%>','Semestre',5,'')" value="Salir" style="height:28px;
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
