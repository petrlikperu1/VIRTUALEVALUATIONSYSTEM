<%@page import="BEAN.NivelDificultadBean"%>
<%@page import="BEAN.CarreraProfesionalBean"%>
<%@page import="java.util.ArrayList;" %>
<%! String codcad;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;
    ArrayList<NivelDificultadBean> listaNivelDificultad = null;  
%>
<%
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaNivelDificultad = (ArrayList<NivelDificultadBean>) request.getAttribute("listaNivelDificultad");
    codcad=(String)request.getAttribute("codigogenerado");
    int i;
%>  

    <input type="hidden" name="op"  id="op">
    <input type="hidden" name="hddcodigo"  id="hddcodigo" value="<%=codcad%>"> 
    <center>
        <table class="FondoTabla" width="1000">
            <tr class="tituloTabla">
                <td>Formulario Registrar Pregunta</td>
            </tr>
        </table>
        <table width="400px" class="FondoTabla">                            
            <tr>
                <td>
                <center>
                    <table width="400" >                            
                        <tr>
                            <td class="text_normal">Codigo :</td>
                            <td><input type="text" name="txtcodigo"   class="input_text" disabled="false" value="<%=codcad%>"></td>
                        </tr>
                        <tr>
                            <td class="text_normal">Carrera Profesional :</td>
                            <td>
                                <select  name="cbocarrera"  class="input_text_combo"    id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>','Materia',9,this.value)">
                                    <option value="0">---------------------</option>
                                    <% for (CarreraProfesionalBean obj : listaCarreraProfesional) {%>
                                    <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Materia :</td>
                            <td>
                                <div id="divmateria">
                                    <select name="cbomateria"   class="input_text_combo"     id="cbomateria">
                                        <option value="0" selected>---------------------</option>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Unidad Temática :</td>
                            <td>
                                <div id="divunidadtematica">
                                    <select name="cbounidadtematica"   class="input_text_combo"    id="cbounidadtematica">
                                        <option value="0" selected>---------------------</option>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Tema :</td>
                            <td>
                                <div id="divtema">
                                    <select name="cbotema"  class="input_text_combo"       id="cbotema">
                                        <option value="0" selected>---------------------</option>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Nivel de Dificultad :</td>
                            <td>
                                <select  name="cbonivel"    class="input_text_combo"     id="cbonivel"  onChange="validartopeayuda(this)">
                                    <option value="0">----------------------</option>
                                    <% for (NivelDificultadBean obj : listaNivelDificultad) {%>
                                    <option value="<%=obj.getCODNIVEL()%>"><%=obj.getNOMBNIVEL()%></option>
                                    <% }%>
                                </select> 
                            </td>
                        </tr>
                    </table>  
                </center>    
                </td>
            </tr>
        </table>
        <table border="0" width="1000" class="FondoTabla">   
            <tr class="tituloTabla">
                <td>Pregunta</td>
            </tr>                   
            <tr>
                <td >  
                    
                    <input  type="hidden" id="txtpregunta1"  name="txtpregunta1" >
                    <button  class="boton" onclick="AgregarPreguntas();">
                        <img  width="20px"  height="20px" src="<%=request.getContextPath()%>/imagenes/nuevo.png">
                        
                        Adicionar Pregunta
                    </button>
                    <div name="txtpregunta" id="txtpregunta"  style="width:1000px; height:150px; overflow: scroll;">                       
                        
                    </div>                         
                </td>
            </tr>
          
        </table>                                 
        <table>
            <tr>
                <td>
                   <center><div   id="divimagenes">  </div></center>
                </td>

            </tr>
        </table>    
        <table>  
            <tr>                                  
                  <td>
                      <button   style="width: 150px" class="boton"  onclick="SubirImagenPreguntaExamenSupervisado('<%=request.getContextPath()%>')"> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Subir Imagen</button>
                   </td>
             </tr> 
        </table>  
        <table width="1000" border="0" class="FondoTabla">
            <tr>
                <td colspan="2" class="tituloTabla"><center>Escribir la Alternativas </center></td>
            </tr>                                   
            <tr>
                <td width="28"  class="text_normal"   align="center">A )</td>
                <td align="center">                                          
                    <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                </td>
            </tr>  
            <tr>
                <td align="center"  class="text_normal"  >B )</td>
                <td align="center">                                          
                    <textarea name="alternativaB" class="input_text" id="alternativaB" style="width: 100%;height:100%"  rows="3"></textarea>
                </td>
            </tr>  
            <tr>
                <td align="center"  class="text_normal"  >C )</td>
                <td align="center">                                          
                    <textarea name="alternativaC" class="input_text" id="alternativaC" style="width: 100%;height:100%"  rows="3"></textarea>
                </td>
            </tr>  
            <tr>
                <td align="center" class="text_normal"  >D )</td>
                <td align="center">                                          
                    <textarea name="alternativaD" class="input_text" id="alternativaD" style="width: 100%;height:100%"  rows="3"></textarea>
                </td>
            </tr> 
             <tr>
                <td align="center"  class="text_normal"  >E )</td>
                <td align="center">                                          
                    <textarea name="alternativaE" class="input_text" id="alternativaE" style="width: 100%;height:100%"  rows="3"></textarea>
                </td>
            </tr>
            <tr>
                <td height="28" align="center"  class="text_normal" >Alternativa Correcta  :</td>
                <td>
                    <select name="cborespuestaok"  class="input_text_combo"     id="cborespuestaok">
                        <option value="0">----------------------</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                        <option value="D">E</option>
                    </select> 
                </td>
            </tr>
        </table> 
        <table width="1000" class="FondoTabla">
            <tr>
                <td>                                             
                    <div id='ayudas2' style="visibility:visible;display:none;" >     
                        <table width="1000" border="0" class="FondoTabla">                                                                        
                            <tr>
                                <td colspan="2" class="tituloTabla"><center>Ingresar las Ayudas de la Pregunta</center></td>
                            </tr>
                            <tr>  
                                <td width="200" align="center"  class="text_normal"  > Ingresar Primera Ayuda :</td>  
                                <td height="34" align="center">
                                    <textarea id="enunciadoAyudas1"   class="input_tex"     name="enunciadoAyudas1" rows="3" style="width:100%;height:100%;"></textarea>
                                </td>
                            </tr>                            
                        </table>
                    </div>   
                    <div  id='ayudas3' style="visibility:visible;display:none;" >     
                        <table width="1000"   border="0"  class="FondoTabla">                                                                        
                            <tr >
                                <td colspan="2"  class="tituloTabla"><center>Ingresar las Ayudas de la Pregunta</center></td>                                                                          
                            <tr>  
                                <td width="200" align="center"  class="text_normal" > Ingresar Primera Ayuda :</td>  
                                <td height="34" align="center">
                                    <textarea id="enunciadoAyudas3"   class="input_text"      name="enunciadoAyudas3" rows="3" style="width:100%;height:100%;"></textarea>
                                </td>
                            </tr>
                            <tr> 
                                <td align="center"  class="text_normal" > Ingresar Segunda Ayuda :</td>
                                <td height="34" align="center">
                                    <textarea name="enunciadoAyudas4"  class="input_text"     style="width:100%;height:100%;" id="enunciadoAyudas4" rows="3"></textarea>
                                </td>                                                                         
                            </tr>
                            
                        </table>
                    </div>      
                </td>
            </tr>                                      
        </table>
        <table border="0">
            <tr>
                <td>
                       <button   onclick="GrabarPregunta('<%=request.getContextPath()%>','Pregunta',4,'<%=codcad%>')"   style="width:100px;"><img  width="50px"  height="50px" src="<%=request.getContextPath()%>/imagenes/grabar.png">Grabar</button>
                </td>
                <td>
                                      
                     <button   onclick="salir('<%=request.getContextPath()%>','Pregunta',1,'')"   style="width:100px;"><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" width="50px"  height="50px"><br>Salir</button>
                    
                </td>
            </tr>
       </table>
       <font color="red">
           <%
               if (request.getAttribute("mensaje") != null) {
                   String msj = (String) request.getAttribute("mensaje");
                   out.print(msj);
               }
           %>
        </font>
    </center>
        
