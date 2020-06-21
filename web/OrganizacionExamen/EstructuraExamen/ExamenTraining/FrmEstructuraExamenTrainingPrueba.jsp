

<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        <input type="hidden" name="op">

            

                        <div class="alert alert-info">
                            <h4><strong><center>REGISTRAR ESTRUCTURA DEL EXAMEN  DE ENTRENAMIENTO (TRAINING )</center></strong></h4>                            
                        </div>  
                        
                      
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                       
                                        <div class="form-group">
						<label for="Usuario" class="col-lg-3 control-label">Codigo :</label>
						<div class="col-lg-8">
							<input type="text" name="txtcodigo"   disabled=false id="txtcodigo"  value="<%=codcad%>" class="form-control"  >
						</div>
                                         </div>
			     
                                        
                                        <div class="form-group">
						<label for="cbosemestre" class="col-lg-3 control-label">Semestre Academico :</label>
						<div class="col-lg-8">
							<select   name="cbosemestre" id="cbosemestre" class="form-control"  >
                                                            <option value="0">2015-II</option>
                                                           
                                                        </select>
						</div>
		                        </div>    
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Carrera Profesional :</label>
						<div class="col-lg-8">
							<select   name="cbocarrera" id="cbocarrera" class="form-control"  onchange="cargarMateria('<%=request.getContextPath()%>','Materia',9,this.value);filtrarEstructuraExamen('<%=request.getContextPath()%>','EstructuraExamen',12);">
                                                            <option value="0">-INGENIERIA DE  SISTEMAS  Y AUDITORIA INFORMATICA-</option>
                                                         
                                                        </select>
						</div>
					</div>  
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Materia :</label>
						<div class="col-lg-8"  id="divmateria">
							<select name="cbomateria" class="form-control"  id="cbomateria"  >
                                                           <option value="0" selected>PROGRAMACION I</option>
                                                        </select> 
						</div>
					</div>                                             
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Tipo Examen :</label>
						<div class="col-lg-8"  id="divtipoexamen">
							<select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">PRIMERA  PRACTICA</option>
                                                            
                                                        </select> 
						</div>
					</div>                                              
                                         <div class="form-group">
						<label for="TiempoTotal" class="col-lg-3 control-label">Tiempo Total(Minutos) :</label>
						<div class="col-lg-8">
							<input  class="form-control" type="text" name="txttiempo"  id="txttiempo"   onkeypress="return soloNumeros(event)">
						</div>
					</div>             
                                       <%--   
                                       <div class="form-group">
						<label for="PreguntasTotales" class="col-lg-3 control-label">Preguntas Totales :</label>
						<div class="col-lg-8">
							<input  class="form-control" type="text" name="txttotalpreguntas"  id="txttotalpreguntas"   onkeypress="return soloNumeros(event)">
						</div>
					</div>                  
                                        ---%> 
                                       <div id='divMarcoLogico' >                                                         
                                         <table  class="table table-striped table-bordered dt-responsive nowrap " cellspacing="0" width="100%">
                                           
                                            <tbody>
                                                <tr>
                                                        <td> 
                                                              <div   id="divunidadtematica">
                                                                    Unidad Tematica:
                                                                    <select name="cbounidadtematica" class="form-control col-lg-12"  id="cbounidadtematica"  >
                                                                       <option value="0" selected>--------</option>
                                                                    </select> 
						             </div>
                                                          </td>
                                                          <td>                                                               
                                                                <div   id="divtema">
                                                                    Tema :
                                                                        <select name="cbotema"  class="form-control col-lg-12" id="cbotema"  >
                                                                           <option value="0" selected>--------</option>
                                                                        </select> 
						                </div>                                                              
                                                          </td> 
                                                          <td  align:="center"  >
                                                                              Nivel Dificultad:
                                                                                <select  name="cbonivel"  class="form-control col-lg-12" id="cbonivel"  onchange="colorfoco(this.value)" >
                                                                                    <option value="0">-------</option>
                                                                                    <% for (NivelDificultadBean obj : listaNivelDificultad) {
                                                                                       value=obj.getCODNIVEL()+"-"+obj.getNOMBNIVEL();
                                                                                    %>
                                                                                    <option value="<%=value%>"><%=obj.getNOMBNIVEL()%></option>
                                                                                    <% }%>
                                                                                </select>                         
                                                          </td>
                                                          <td>
                                                          <div   id="divcontenido">
                                                                    Contenido Capacidad:
                                                                        <select name="cbocontenido"  class="form-control col-lg-12" id="cbocontenido"  >
                                                                             <option value="0" selected>---------------</option>
                                                                             <option value="1" >Contenido Capacidad Conceptual</option>
                                                                             <option value="2" >Contenido Capacidad Procedimental</option>
                                                                        </select> 
						                </div>
                                                          </td>
                                                           <td   align="center">&nbsp; </td>
                                            
                                                    </tr> 
                                                    <tr>                                                        
                                                          <td   align="center">Cantidad x Preg:<input type="text"    name="txtcantpreg"  id="txtcantpreg"        onkeypress="return soloNumeros(event)"     class="form-control"></td>
                                                          <td   align="center">Puntaje x Preg:<input type="text"  name="txtpuntajepreg"  id="txtpuntajepreg"   onkeypress="return soloNumeros(event)"     class="form-control"></td>
                                                          <td   align="center">Pregunta Errada:<input type="text"    name="txtpenalidadpreg"  id="txtpenalidadpreg"  onkeypress="return soloNumeros(event)"   class="form-control"></td>
                                                          <td   align="center">Penalidad Ayudas:<input type="text"     onkeypress="return soloNumeros(event)"    name="txtpenalidadayudas"  id="txtpenalidadayudas"  class="form-control"></td>
                                                        
                                                          <td  align="center">
                                                                <button   onclick="agregarItemMarcoLogico('<%=request.getContextPath()%>')"  class="btn btn-primary" ><img src="<%=request.getContextPath()%>/imagenes/agregarreg.png" width="30px"  height="30px"></button>
                                                         
                                                          </td>
                                                    </tr>   
                                            </tbody> 
                                         </table>
                                                          
                       </div>
                      <div  id="divMarco">
                            <table    border="0" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                             <tbody> 
                               <tr >
                                <td >&nbsp; </td>
                                <td >&nbsp; </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td >&nbsp; </td>  
                                <td >&nbsp; </td>
                                 <td >&nbsp; </td>
                               </tr>
                             </tbody>
                            </table>
                                  
                            <table    border="0" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                               
                            <tbody> 
                               <tr >
                                <td >&nbsp; </td>
                                <td >&nbsp; </td>
                                <td>Total  Preguntas </td>
                                <td><input type="text" class="form-control"  disabled=false  name="txttotal"  id="txttotal"   value="0"   ></td>
                                <td>Puntaje Total </td>
                                <td><input type="text" class="form-control" disabled=false   name="txttotal"  id="txttotalpreguntas"   value="0"   ></td>
                                <td >&nbsp; </td>  
                                <td >&nbsp; </td>
                               </tr>
                            </table>
                        </div>            
                           
                       <div class="form-group text-center">
						
                                                  
                                               <button   onclick="CallMant('<%=request.getContextPath()%>','EstructuraExamen',11,'')"   style="width:100px;" class="btn btn-primary"    ><img src="<%=request.getContextPath()%>/imagenes/nuevo.png" width="40px"  height="40px"  ><br>Nuevo</button>
                                             
                                               <button   onclick="GrabarEstructuraExamen('<%=request.getContextPath()%>','<%=codcad%>','EstructuraExamen',4)"   style="width:100px;"  class="btn btn-primary"   ><img src="<%=request.getContextPath()%>/imagenes/grabar.png" width="40px"  height="40px"><br>Grabar</button>
		       </div>      
                                
                                <div id="divclavemodificada" ></div>
				</div>
			</div>	
  </div> 
  <div id="divtabla">
     <div class="row">
     <div class="col-md-12">
     <div class="panel panel-info">
     <div class="panel-body">
      <div class="table-responsive">
     <table id="example" class="table table-striped table-bordered dt-responsive nowrap table-hover" cellspacing="0" width="100%">
        <thead>
           
                <tr  class="panel-info ">                                                            
                                    <th>Materia</th>
                                    <th>Tipo Examen</th>
                                    <th>Semestre</th>
                                    <th>Carrera</th>    
                                    <th>Estado</th>                                                         
                                    <th>Modificar</th>
                                    <th>Dar Baja</th>
                </tr>
          
        </thead>
        <tbody>
             <%  for (EstructuraExamenBean obj : listaEstructuraExamen) {%>
                                    <tr>                           
                                    <td><%=obj.getNOMBMATERIA()%></td>
                                    <td><%=obj.getNOMBTIPEXAMEN()%></td>
                                    <td><%=obj.getNOMBSEMESTRE()%></td>
                                    <td><%=obj.getNOMBCARRERA()%></td>
                                    <td>                                        
                                                    <%  if(obj.getESTADO().equals("A")){ %>
                                                            <%="HABILITADO"%>
                                                    <% }else{     %>
                                                       <%="   DESAHABILITADO"%>
                                                    <%   }   %>
                                    </td>                                                                  
                                    <td>
                                    <center>
                                        <button type="button"  class="btn btn-primary"   onclick="cargarEstructuraExamen('<%=request.getContextPath()%>','<%=obj.getCODESTRUCEXAMEN()%>',
                                                                                              '<%=obj.getCODSEMESTRE()%>','<%=obj.getCODCARRERA()%>',
                                                                                              '<%=obj.getCODMATERIA()%>','<%=obj.getCODUNIDAD()%>',
                                                                                              '<%=obj.getCODTEMA()%>','<%=obj.getCODTIPEXAMEN()%>')">
                                        <img src="<%=request.getContextPath()%>/imagenes/modificar.png" width="20" height="20">Modificar
                                        </button>
                                    </center>
                                </td>
                                <td>
                                    <center>
                                        <button type="button" class="btn btn-primary"   onclick="eliminarEstructuraExamen('<%=request.getContextPath()%>',16,'<%=obj.getCODESTRUCEXAMEN()%>')"  >
                                                                                              
                                            <img src="<%=request.getContextPath()%>/imagenes/eliminar.png" width="20" height="20">Eliminar
                                        </button>
                                    </center>
                                </td>
                                    </tr>
                                    <% }%>
        </tbody>
</table>
 </div>     
 </div>
 </div> 
 </div> 
 </div>
      
  </div>
  
    <div id="DivModal2">
        
    </div>       
  
  
  
    </body>
</html>