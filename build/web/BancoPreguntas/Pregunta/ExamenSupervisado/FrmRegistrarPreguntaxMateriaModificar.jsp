<%@page import="BEAN.PreguntaBean"%>
<%@page import="BEAN.AlternativaBean"%>
<%@page import="BEAN.AyudaBean"%>
<%@page import="BEAN.MateriaBean"%>
<%@page import="BEAN.UnidadTematicaBean"%>
<%@page import="BEAN.TemaBean"%>
<%@page import="BEAN.NivelDificultadBean"%>
<%@page import="BEAN.CarreraProfesionalBean"%>
<%@page import="java.util.ArrayList;" %>
<%! int codcad;
    PreguntaBean objPreguntaBean = null;
    ArrayList<MateriaBean> listaMateria = null;
    ArrayList<TemaBean> listaTema = null;
    ArrayList<UnidadTematicaBean> listaUnidadTematica = null;
    ArrayList<CarreraProfesionalBean> listaCarreraProfesional = null;
    ArrayList<NivelDificultadBean> listaNivelDificultad = null;
    String[] alternativas = {"A","B","C","D"};
    String  codpregunta;
%>
<%
    objPreguntaBean = (PreguntaBean) request.getAttribute("objPreguntaBean");
    listaMateria = (ArrayList<MateriaBean>) request.getAttribute("listaMateria");
    listaTema = (ArrayList<TemaBean>) request.getAttribute("listaTema");
    listaUnidadTematica = (ArrayList<UnidadTematicaBean>) request.getAttribute("listaUnidadTematica");
    listaCarreraProfesional = (ArrayList<CarreraProfesionalBean>) request.getAttribute("listaCarreraProfesional");
    listaNivelDificultad = (ArrayList<NivelDificultadBean>) request.getAttribute("listaNivelDificultad");
   
    codcad=objPreguntaBean.getCODPREG();
  
%>  

    <input type="hidden" name="op"   id="op">
    <input type="hidden" name="hddcodigo"  id="hddcodigo" value="<%=codcad%>"> 
    <center>
        <table class="FondoTabla" width="1000">
            <tr class="tituloTabla">
                <td>Formulario Modificar Pregunta</td>
            </tr>
        </table>
        <table width="1000px" class="FondoTabla">                            
            <tr>
                <td>
                <center>
                    <table width="400px" >                            
                        <tr>
                            <td class="text_normal">Codigo :</td>
                            <td><input type="text" name="txtcodigo" disabled="false" value="<%=codcad%>"></td>
                        </tr>
                        <tr>
                            <td class="text_normal">Carrera Profesional :</td>
                            <td>
                                <select  name="cbocarrera"   id="cbocarrera" onchange="cargarMateria('<%=request.getContextPath()%>','Materia',9,this.value)">
                                    <option value="0">---------------------</option>
                                    <% 
                                    for (CarreraProfesionalBean obj : listaCarreraProfesional) {
                                        if (obj.getCODCARRERA() == objPreguntaBean.getCODCARRERA()) {
                                    %>
                                    <option value="<%=obj.getCODCARRERA()%>" selected="selected"><%=obj.getNOMBCARRERA()%></option>
                                    <%  } else { %>
                                    <option value="<%=obj.getCODCARRERA()%>"><%=obj.getNOMBCARRERA()%></option>
                                    <%  
                                        }
                                    }
                                    %>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Materia :</td>
                            <td>
                                <div id="divmateria">
                                    <select name="cbomateria"   id="cbomateria">
                                        <option value="0">---------------------</option>
                                        <% 
                                        for (MateriaBean obj : listaMateria) {
                                            if (obj.getCODMATERIA()==objPreguntaBean.getCODMATERIA()) {
                                        %>
                                        <option value="<%=obj.getCODMATERIA()%>" selected="selected"><%=obj.getNOMBMATERIA()%></option>
                                        <%  } else { %>
                                        <option value="<%=obj.getCODMATERIA()%>"><%=obj.getNOMBMATERIA()%></option>
                                        <%  
                                            }
                                        }
                                        %>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Unidad Temática :</td>
                            <td>
                                <div id="divunidadtematica">
                                    <select name="cbounidadtematica"  id="cbounidadtematica">
                                        <option value="0">---------------------</option>
                                        <% 
                                        for (UnidadTematicaBean obj : listaUnidadTematica) {
                                            if (obj.getCODUNIDTEMA()==objPreguntaBean.getCODUNIDTEMA()) {
                                        %>
                                        <option value="<%=obj.getCODUNIDTEMA()%>" selected="selected"><%=obj.getNOMBUNIDTEMA()%></option>
                                        <%  } else { %>
                                        <option value="<%=obj.getCODUNIDTEMA()%>"><%=obj.getNOMBUNIDTEMA()%></option>
                                        <%  
                                            }
                                        }
                                        %>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Tema :</td>
                            <td>
                                <div id="divtema">
                                    <select name="cbotema"  id="cbotema">
                                        <option value="0">---------------------</option>
                                        <% 
                                        for (TemaBean obj : listaTema) {
                                            if (obj.getCODTEMA()==objPreguntaBean.getCODTEMA()) {
                                        %>
                                        <option value="<%=obj.getCODTEMA()%>" selected="selected"><%=obj.getNOMBTEMA()%></option>
                                        <%  } else { %>
                                        <option value="<%=obj.getCODTEMA()%>"><%=obj.getNOMBTEMA()%></option>
                                        <%  
                                            }
                                        }
                                        %>
                                    </select> 
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="text_normal">Nivel de Dificultad :</td>
                            <td>
                                <select  name="cbonivel"  id="cbonivel"  onChange="validartopeayuda(this)">
                                    <option value="0">----------------------</option>
                                    <% 
                                    for (NivelDificultadBean obj : listaNivelDificultad) {
                                        if (obj.getCODNIVEL()== objPreguntaBean.getCODNIVEL()) {
                                    %>
                                    <option value="<%=obj.getCODNIVEL()%>" selected="selected"><%=obj.getNOMBNIVEL()%></option>
                                    <%  } else { %>
                                    <option value="<%=obj.getCODNIVEL()%>"><%=obj.getNOMBNIVEL()%></option>
                                    <%  
                                        }
                                    }
                                    %>
                                </select> 
                            </td>
                        </tr>
                    </table>  
                </center>    
                </td>
            </tr>
        </table>
                               
                        <input  type="hidden" id="txtpregunta1"  name="txtpregunta" >
                        <table border="0" width="1000px" class="FondoTabla">   
                            <tr class="tituloTabla">
                                <td>Escribir la Pregunta</td>
                            </tr>                   
                            <tr>
                                <td >   
                                    <button  class="boton" onclick="AgregarPreguntas();">Modificar Pregunta</button>
                                    <div name="txtpregunta" id="txtpregunta1" class="input_text" style="width:1000px; height:150px; overflow: scroll;"> <%=objPreguntaBean.getENUNCIADOPREG()%>  </div>   
                                
                                </td>
                            </tr>
                        </table>                                 
                                <table>  
                                    <tr>                                  
                                          <td>
                                              <button   style="width: 150px" class="boton"  onclick="SubirImagenPregunta()"> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Modificar Imagen</button>
                                           </td>
                                     </tr> 
                                </table>   
        <table width="1000" border="0" class="FondoTabla">
            <tr>
                <td colspan="2"  class="tituloTabla"><center>Escribir la Alternativas </center></td>
            </tr>                                   
            <tr>
                <td width="28" align="center">A )</td>
                <td colspan="1" align="center">
                    <input type="hidden" name="hddcodalter1"   id="hddcodalter1"   value="<%=objPreguntaBean.getCODALTER1()%>">
                    <textarea name="alternativaA" class="input_text" id="alternativaA" style="width: 100%;height:100%" rows="5"><%=objPreguntaBean.getENUNCIADOALTER1()%></textarea>
                </td>
            </tr>  
            <tr>
                <td height="28" align="center"  >B )</td>
                <td colspan="1" align="center">
                    <input type="hidden" name="hddcodalter2"   id="hddcodalter2" value="<%=objPreguntaBean.getCODALTER2()%>">
                    <textarea name="alternativaB" class="input_text" id="alternativaB" style="width: 100%;height:100%" rows="5"><%=objPreguntaBean.getENUNCIADOALTER2()%></textarea>
                </td>
            </tr>  
            <tr>
                <td height="28" align="center"  >C )</td>
                <td colspan="1" align="center">
                    <input type="hidden" name="hddcodalter3"  id="hddcodalter3" value="<%=objPreguntaBean.getCODALTER3()%>">
                    <textarea name="alternativaC" class="input_text" id="alternativaC" style="width: 100%;height:100%" rows="5"><%=objPreguntaBean.getENUNCIADOALTER3()%></textarea>
                </td>
            </tr>  
            <tr>
                <td height="28" align="center"  >D )</td>
                <td colspan="1" align="center">
                    <input type="hidden" name="hddcodalter4"  id="hddcodalter4" value="<%=objPreguntaBean.getCODALTER4()%>">
                    <textarea name="alternativaD" class="input_text" id="alternativaD" style="width: 100%;height:100%" rows="5"><%=objPreguntaBean.getENUNCIADOALTER4()%></textarea>
                </td>
            </tr> 
            <tr>
                <td height="28" align="center" >Alternativa Correcta  :</td>
                <td>
                    <select name="cborespuestaok"   id="cborespuestaok">
                        <option value="0">------------</option>
                        <%
                        for(int i=0;i<alternativas.length;i++){
                            if(alternativas[i].equals(objPreguntaBean.getRESPUESTAOK())){
                        %>
                        <option value="<%=alternativas[i]%>" selected="selected"><%=alternativas[i]%></option>
                        <%  }else{ %>
                        <option value="<%=alternativas[i]%>"><%=alternativas[i]%></option>
                        <%
                            }
                        }
                        %>
                    </select> 
                </td>
            </tr>
        </table> 
        <table width="1000" class="FondoTabla">
            <tr>
                <td colspan="1">
                    <input type="hidden" name="hddcodigoayuda1"  id="hddcodigoayuda1" value="<%=objPreguntaBean.getCODAYUDA1()%>">
                    <input type="hidden" name="hddcodigoayuda2"  id="hddcodigoayuda2"  value="<%=objPreguntaBean.getCODAYUDA2()%>">
                    <input type="hidden" name="hddcodigoayuda3"  id="hddcodigoayuda3"  value="<%=objPreguntaBean.getCODAYUDA3()%>">
                    <% if(objPreguntaBean.getCODNIVEL()==2){ %>
                    <div id='ayudas2' style="visibility:visible;" >
                    <% }else{ %>
                    <div id='ayudas2' style="visibility:visible;display:none;" >
                    <% } %>
                        <table width="1000" border="0" class="FondoTabla">                                                                        
                            <tr>
                                <td colspan="2" class="tituloTabla"><center>Ingresar las Ayudas de la Pregunta</center></td>
                            </tr>
                            <tr>  
                                <td width="200" align="center"> Ingresar Primera Ayuda :</td>  
                                <td height="34" align="center">
                                    <textarea id="enunciadoAyudas1" class="input_text" name="enunciadoAyudas1" rows="3" style="width:100%;height:100%;"><%=objPreguntaBean.getENUNCIADOAYUDA1()%></textarea>
                                </td>
                            </tr>
                            <tr> 
                                <td align="center"> Ingresar Segunda Ayuda :</td>
                                <td height="34" align="center">
                                    <textarea name="enunciadoAyudas2"  class="input_text" style="width:100%;height:100%;" id="enunciadoAyudas2" rows="3"><%=objPreguntaBean.getENUNCIADOAYUDA2()%></textarea>
                                </td>                                                                         
                            </tr>
                        </table>
                    </div>
                    <% if(objPreguntaBean.getCODNIVEL()==3){ %>
                    <div id='ayudas3' style="visibility:visible;" >
                    <% }else{ %>
                    <div id='ayudas3' style="visibility:visible;display:none;" >
                    <% } %>
                        <table width="1000"   border="0"  class="FondoTabla">                                                                        
                            <tr >
                                <td colspan="2"  class="tituloTabla"><center>Ingresar las Ayudas de la Pregunta</center></td>                                                                          
                            <tr>  
                                <td width="200" align="center"  > Ingresar Primera Ayuda :</td>  
                                <td height="34" align="center">
                                    <textarea id="enunciadoAyudas3"  class="input_text"   name="enunciadoAyudas3" rows="3" style="width:100%;height:100%;"><%=objPreguntaBean.getENUNCIADOAYUDA1()%></textarea>
                                </td>
                            </tr>
                            <tr> 
                                <td align="center"  > Ingresar Segunda Ayuda :</td>
                                <td height="34" align="center">
                                    <textarea name="enunciadoAyudas4" class="input_text"   style="width:100%;height:100%;" id="enunciadoAyudas4" rows="3"><%=objPreguntaBean.getENUNCIADOAYUDA2()%></textarea>
                                </td>                                                                         
                            </tr>
                            <tr> 
                                <td align="center"  > Ingresar Tercera Ayuda :</td>
                                <td height="34" align="center">
                                    <textarea name="enunciadoAyudas5"  class="input_text"   style="width:100%;height:100%;" id="enunciadoAyudas5" rows="3"><%=objPreguntaBean.getENUNCIADOAYUDA3()%></textarea>
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
                    <input type="button" value="Guardar" onclick="ActualizarPregunta('<%=request.getContextPath()%>','Pregunta',6,'<%=codcad%>')" style="height:40px;width:200px;"> 
                </td>
                <td>
                    <input  type="button" value="Salir" onclick="salir('<%=request.getContextPath()%>','Pregunta',1,'')" style="height:40px;width:200px;"> 
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
