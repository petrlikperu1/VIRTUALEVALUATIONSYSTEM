



<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
        <input type="hidden" name="op">

                        <div class="alert alert-info">
                            <h4><strong><center>Formulario Registrar Preguntas </center></strong></h4>                            
                        </div>  
                        
                      
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                       
                                      
                                       
                                        <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Carrera Profesional :</label>
						<div class="col-lg-8">
							<select   name="cbocarrera" id="cbocarrera" class="form-control"  onchange="cargarMateria('<%=request.getContextPath()%>','Materia',9,this.value);filtrarEstructuraExamen('<%=request.getContextPath()%>','EstructuraExamen',12);">
                                                            <option value="0">-Seleccionar Carrera-</option>
                                                        
                                                        </select>
						</div>
					</div>  
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Materia :</label>
						<div class="col-lg-8"  id="divmateria">
							<select name="cbomateria" class="form-control"  id="cbomateria"  >
                                                           <option value="0" selected>---------------------</option>
                                                        </select> 
						</div>
					</div>           
                                                            
                                                  <div class="form-group">
						<label for="cbosemestre" class="col-lg-3 control-label">Unidad Tematica :</label>
						<div class="col-lg-8">
							<select   name="cbosemestre" id="cbosemestre" class="form-control"  onchange="filtrarEstructuraExamen('<%=request.getContextPath()%>','EstructuraExamen',12)" >
                                                            <option value="0">----------------------------</option>
                                                           
                                                        </select>
						</div>
		                        </div>               
                                                            
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Tema :</label>
						<div class="col-lg-8"  id="divtipoexamen">
							<select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">---------------------</option>
                                                          
                                                        </select> 
						</div>
					</div>      
                                                            
                                        <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Nivel Dificultad :</label>
						<div class="col-lg-8"  id="divtipoexamen">
							<select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">---------------------</option>
                                                          
                                                        </select> 
						</div>
					</div>           
                                      <div class="form-group">
						<label for="Clave" class="col-lg-3 control-label">Tipo Pregunta :</label>
						<div class="col-lg-8"  id="divtipoexamen">
							<select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">---------------------</option>
                                                            <option value="0">CONCEPTUAL</option>
                                                             <option value="0">PROCEDIMENTAL</option>
                                                          
                                                        </select> 
						</div>
					</div>           
                                                            
                                                            
              <div class="panel panel-primary">
                  <div class="panel-heading">
                    <h3 class="panel-title"> Pregunta</h3>
                </div>   
            
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                                    <tbody>                  
                                        <tr>
                                            <center>
                                                <td   class="col-md-2"   >
                                                    <textarea rows="5" cols="134"></textarea>
                                                </td>
                                            </center>
                                               
                                        </tr>  
                                     </tbody>  
                                </table>                  
                   
           </div> 
            <div class="panel panel-primary">
                  <div class="panel-heading">
                    <h3 class="panel-title"> Subir Imagen</h3>
                </div>   
            
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                                    <tbody>                  
                                        <tr>
                                            <center>
                                                <td   class="col-md-2"   >
                                                <center>
                                                     <button   style="width: 150px" class="boton"  onclick="SubirImagenPreguntaExamenSupervisado('<%=request.getContextPath()%>')"> <img src="<%=request.getContextPath()%>/imagenes/subirimagen.png" width="40px" height="35px"><br>Subir Imagen</button>
                                                </center>
                                                    
                                                </td>
                                            </center>
                                               
                                        </tr>  
                                     </tbody>  
                                </table>                  
                   
           </div>                                               
    
              <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"> Escribir la Alternativas</h3>
                </div>   
                  
                   <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">                        
                        <tbody>
                            <tr>
                                <td class="col-md-1" >A )</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr> 
                            <tr>
                                <td class="col-md-1" >B )</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                            <tr>
                                <td class="col-md-1" >C )</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                            <tr>
                                <td class="col-md-1" >D )</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                            <tr>
                                <td class="col-md-1" >E )</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                           
                        </tbody>  
                    </table>           
                   
           </div>                                   
              
                                                
           <div class="panel panel-primary">
                  <div class="panel-heading">
                    <h3 class="panel-title"> Elegir Alternativa correcta</h3>
                </div>   
            
                                <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="0%">                        
                                    <tbody>                  
                                        <tr>
                                            <center>
                                                <td   class="col-md-2"   >
                                                <center>
                                                    <div class="form-group">
						
						<div class="col-lg-12"  id="divtipoexamen">
                                                    <center>
                                                        <select name="cbotipoexamen" id="cbotipoexamen"  onchange="saltarCursor()" class="form-control"   >
                                                           <option value="0">---------------------</option>
                                                            <option value="0">A</option>
                                                             <option value="0">B</option>
                                                              <option value="0">C</option>
                                                               <option value="0">D</option>
                                                                <option value="0">E</option>
                                                        </select> 
                                                        
                                                    </center>
							
						</div>
					</div>           
                                                </center>
                                                    
                                                </td>
                                            </center>
                                               
                                        </tr>  
                                     </tbody>  
                                </table>                  
                   
           </div>                                        
                                                
                                                
               
                                                
                                                
              <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"> Escribir las Ayudas</h3>
                </div>   
                  
                   <table id="example" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">                        
                        <tbody>
                         <tr>
                                <td class="col-md-1" >Primera  Ayuda : </td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr> 
                            <tr>
                                <td class="col-md-1" >Segunda Ayuda :</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                            <tr>
                                <td class="col-md-1" >Tercera Ayuda :</td>
                                <td   >
                                   <textarea name="alternativaA" class="input_text" id="alternativaA"       style="width: 100%;height:100%"  rows="3"></textarea>
                                </td>
                            </tr>    
                                 
                           
                        </tbody>  
                    </table>           
                   
           </div>                                               
                                                
                                                
            
        
                       <div class="form-group text-center">
						
                                                  
                                             
                                             
                                               <button   onclick="GrabarEstructuraExamen('<%=request.getContextPath()%>','','EstructuraExamen',4)"   style="width:100px;"  class="btn btn-primary"   ><img src="<%=request.getContextPath()%>/imagenes/grabar.png" width="40px"  height="40px"><br>Grabar</button>
		      
                                               
                                        <button   onclick="GrabarEstructuraExamen('<%=request.getContextPath()%>','','EstructuraExamen',4)"   style="width:100px;"  class="btn btn-primary"   ><img src="<%=request.getContextPath()%>/imagenes/salirdatos.png" width="40px"  height="40px"><br>Salir</button>        
                                               
                                               
                                               
                                              
                       
                       </div>      
                                
                                <div id="divclavemodificada" ></div>
				</div>
			</div>	
  </div> 
  
  
    </body>
</html>
 


