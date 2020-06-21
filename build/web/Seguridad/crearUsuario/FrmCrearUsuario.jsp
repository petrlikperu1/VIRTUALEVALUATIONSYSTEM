
 
<!DOCTYPE html>
<html>
    <body onload="cargarFoco()">
                        <input type="hidden" name="op">
                       
                        <div class="alert alert-info">
                            <h4><strong><center>Gestionar Usuario y Privilegios</center></strong></h4>                            
                        </div>                         
			<div class="panel-body">                                              
				<div class="form-horizontal" role="form">    
                                                    
                                              <div class="form-group">
						<label for="Tipo" class="col-lg-3 control-label">Tipo Usuario :</label>
						<div class="col-lg-8">
							                                                       
                                                       <select  name="cbousuario" id="cbousuario" class="form-control" onchange="SeleccionarTipoUsuario('<%=request.getContextPath()%>','CrearUsuario',this.value)" >
                                                            <option value="0" selected>-Seleccionar tipo Usuario-</option>
                                                            <option value="1" >DOCENTE</option>
                                                            <option value="7" >ESTUDIANTE</option>
                                                        </select> 
						</div>
					       </div>  
					<hr>
					<div class="form-group text-center">	                                      
                                                <button type="button" class="btn btn-primary" onclick="inicio()" >
							<img src="<%=request.getContextPath()%>/imagenes/salirdatos.png"   width="20px" height="20px"  alt="Salir">Salir
						</button>
                                                
					</div>
				</div>
			</div>	
  </div>        
    </body>
</html>
 