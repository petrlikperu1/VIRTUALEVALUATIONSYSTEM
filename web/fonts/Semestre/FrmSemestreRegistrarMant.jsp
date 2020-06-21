<%!
   String codcad;
%>
<% 
  codcad=(String)request.getAttribute("codigogenerado");
%>
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
         <form name="form">
               <center>
               <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla">
                    <td>Registrar Semestre</td>
                </tr>
                </table>
                <table width="300" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" disabled="false" value="<%=codcad%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Nombre :</td>
                        <td><input type="text" id="txtnombre" placeholder="Ingrese nombre..." class="input_text"   onKeyDown="keypres(event)"   ></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Fecha Inicio :</td>
                        <td><input type="date" id="txtfechainicio"  placeholder="dd/mm/aaaa" class="input_text">
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="text_normal">Fecha Fin :</td>
                        <td><input type="date" id="txtfechafin" placeholder="dd/mm/aaaa" class="input_text">
                        
                        
                        </td>
                    </tr>
                </table>
                <table border="0">
                    <tr>
                        <td><input type="button"  onclick="grabarSemestre('<%=codcad%>','<%=request.getContextPath()%>')" value="Grabar" style="height:28px;
                                                                                                        width:80px;" /></td>
                        <td><input type="button" onclick="salir('<%=request.getContextPath()%>','Semestre',5,'')"value="Salir" style="height:28px;
                                                                                                        width:80px;" /></td>
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
        </div>
      
  </div>
        
    </body>
</html>
