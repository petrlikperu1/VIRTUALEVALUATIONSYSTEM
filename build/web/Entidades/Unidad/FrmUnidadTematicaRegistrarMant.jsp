<%@page import="BEAN.CarreraProfesionalBean"%>
<%@page import="java.util.ArrayList;" %>
<%!
   String  codcad;
   ArrayList<CarreraProfesionalBean>    listaCarreraProfesional=null;
%>
<% 
  codcad=(String)request.getAttribute("codigogenerado");
  listaCarreraProfesional=(ArrayList<CarreraProfesionalBean>)request.getAttribute("listaCarreraProfesional");
%>  
<html>    
    <body   onload="cargarFoco()">       
        <form  name="form">
            <input type="hidden" name="op">
            <input type="hidden" name="hddcodigo" id="hddcodigo" value="<%=codcad%>">
            <center>
                 <table width="100%" border="0" class="FondoTabla"  >
                <tr class="tituloTabla">
                    <td>Registrar Tabla Unidad Temática</td>
                </tr>
            </table>
                <table width="400px" class="FondoTabla">
                    <tr>
                        <td class="text_normal">Codigo :</td>
                        <td><input type="text" name="txtcodigo" id="txtcodigo" disabled="false" value="<%=codcad%>"></td>
                    </tr>
                    <tr>
                        <td class="text_normal">Carrera Profesional :</td>
                        <td>
                            <select  name="cbocarrera" id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>','Materia',11,this.value)">
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
                                <option value="0" selected>---------------------</option>
                            </select> 
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text_normal">Unidad Temática :</td>
                        <td><input type="text" name="txtnombre" id="txtnombre" placeholder="Ingrese nombre..." class="input_text"></td>
                    </tr>
                </table>
                <table border="0">
                    <tr>
                        <td><input type="button"  onclick="grabarUnidadTematica('<%=codcad%>','<%=request.getContextPath()%>')" value="Grabar" style="height:28px;
                                                                                                        width:80px;" /></td>
                        <td><input type="button" onclick="salir('<%=request.getContextPath()%>','UnidadTematica',5,'')"value="Salir" style="height:28px;
                                                                                                        width:80px;" /></td>
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
